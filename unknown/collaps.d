module mainwork.collaps;
import std.stdio, std.string;
import mainwork.bible, bibles.wkobj.myperson;

int language;

int games() {
	chooselanguage();

	switch (language) {
		case 1:
			break;
		case 2:
			introductionen();
			break;
		default:
			// Empty. For now.
			break;
	}

	return 0;
}

void introductionen() {
	"Hello, stranger! Tell me your name:".writeln;
	gameperson player = newone(null);

	do {
		try {
			player.name = readme();
		} catch (Throwable e) { "Kha-kha-kha. Sorry, what did you say?".writeln; }

		if (player.name == "")
			"Kha-kha-kha. Sorry, what did you say?".writeln;
		else
			if (player.name != null) break;
	} while (true);

	clscr();
	format("Oh, %s, such magnificent name!", player.name).writeln;
	writeln;
	format("So, %s, can you tell me your age, please?", player.name).writeln;
	int counter = 0;

	do {
		if (counter == 1) { "What, i can't hear you!".writeln; }
		if (counter >= 2 && counter <= 4) { 
			"Still can't hear you!".writeln;
			"voice from nowhere:*hey, it's a game and it's your hero, not you*".writeln;
			"voice from nowhere:*put the age between 16 and 30*".writeln; 
		} else if (counter > 4)
			"voice from nowhere:*are you kidding me?*".writeln;
		counter++;
		player.age = GetInt();
	} while (player.age < 16 || player.age > 30);
	clscr();
	if (counter < 5) {
		if (player.age > 15 && player.age < 18)
			("Gash, your so young! Only %d, oho-hoh.", player.age).write;
	} else {
		if (player.age > 15 && player.age < 18) {
			"*you little...grr*".writeln;
			format("Ah! Now I see. So young, only %d. This world never changes...", player.age).write;
		}
	}

	" But didn't matter for now.".writeln;
	"".writeln;
	readln;
}

void chooselanguage() {
	"Choose language, please (1 - for russian, 2 - for english):".writeln;
	// "Выбери язык, пожалуйста (1 - русский, 2 - английский):".writeln;
	readln();
	clscr();
	"I don't know your choice and I don't care about it. I know only english, rofl.".writeln;
	language = 2;
	readln();
	clscr();
}