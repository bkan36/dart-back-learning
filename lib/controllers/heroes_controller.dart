import 'package:conduit/conduit.dart';
import 'package:heroes_dart_back_end/heroes_dart_back_end.dart';

class HeroesController extends ResourceController {
  final _heroes = [
    {'id': 11, 'name': 'Mr. Nice'},
    {'id': 12, 'name': 'Narco'},
    {'id': 13, 'name': 'Bombasto'},
    {'id': 14, 'name': 'Celeritas'},
    {'id': 15, 'name': 'Magneta'},
  ];

  @Operation.get()
  Future<Response> getAllHeroes() async {
    return Response.ok(_heroes);
  }

  @Operation.get('id')
  Future<Response> getHeroByID(@Bind.path('id') int id) async {
    final hero =
        _heroes.firstWhere((hero) => hero['id'] == id, orElse: () => {});

    if (hero.isEmpty) {
      return Response.notFound();
    }

    return Response.ok(hero);
  }
}
