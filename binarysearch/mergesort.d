module runnable;
import std.stdio, std.algorithm, std.array, std.range;
// для второго варианта не нужен std.array, но нужны эти библиотеки:
import core.stdc.stdlib, std.exception;

// первый вариант:
T[] mergeSorted(T)(in T[] D) {
    if (D.length < 2)
        return D.dup;
    return [D[0 .. $ / 2].mergeSorted, D[$ / 2 .. $].mergeSorted]
           .nWayUnion.array;
}

// второй вариант:
void mergeSort(T)(T[] data) if (hasSwappableElements!(typeof(data))) {
    immutable L = data.length;
    if (L < 2) return;
    T* ptr = cast(T*)alloca(L * T.sizeof);
    enforce(ptr != null);
    ptr[0 .. L] = data[];
    mergeSort(ptr[0 .. L/2]);
    mergeSort(ptr[L/2 .. L]);
    [ptr[0 .. L/2], ptr[L/2 .. L]].nWayUnion().copy(data);
}

void main() {
    auto a = [3, 4, 2, 5, 1, 6];
    a.mergeSort();
    writeln(a);

    [3, 4, 2, 5, 1, 6].mergeSorted.writeln;
}
