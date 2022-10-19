import '../models/games_models.dart';

class GamesRepositories {
  late final List<Games> _gamesIn = [];

  get gamesIn => _gamesIn;

  GamesRepositories() {
    _gamesIn.addAll([
      Games(
          "DOOM Eternal",
          "assets/imgs/Doom.jpg",
          "Hell s armies have invaded Earth. Become the Slayer in an epic single-player campaign to conquer demons across dimensions and stop the final destruction of humanity. The only thing they fear... is you.",
          "39.99 USD",
          false),
      Games(
          "Dark Souls III",
          "assets/imgs/DST.jpg",
          "Awarded Best RPG at Gamescom 2015 and with over 35 awards and nominations at E3 2015, DARK SOULS™ III continues to raise the bar for one of the most innovative and critically acclaimed series.",
          "59.99 USD",
          false),
      Games(
          'Zelda Majoras Mask',
          'assets/imgs/Zelda.jpg',
          'The story of Majoras Mask takes place two months after the events of Ocarina of Time. It follows Link, who on a personal quest ends up in Termina, a world parallel to Hyrule. Upon reaching Termina, Link learns that the world is endangered as the moon will fall into the world in three days.',
          '35.0 USD',
          false),
      Games(
          'Diablo III',
          'assets/imgs/diablo.jpg',
          'Diablo III is a hack-and-slash action role-playing game developed and published by Blizzard Entertainment as the third installment in the Diablo franchise.',
          '39.99 USD',
          false),
      Games(
          'Mario Galaxy',
          'assets/imgs/mario.jpg',
          'Super Mario Galaxy is set in outer space, where Mario travels through different galaxies to collect Power Stars, earned by completing missions, defeating a boss, or reaching a particular area.',
          '13.99 USD',
          false),
      Games(
          'The elder scrolls: Skyrim',
          'assets/imgs/Skyrim.jpg',
          'The Elder Scrolls V: Skyrim is an action role-playing game, playable from either a first- or third-person perspective. The player may freely roam over the land of Skyrim, an open world environment consisting of wilderness expanses, dungeons, caves, cities, towns, fortresses, and villages.',
          '39.99 USD',
          false)
    ]);
  }
}
