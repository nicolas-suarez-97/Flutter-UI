
class Cast {
  List<Actor> actores = new List();

  Cast.fromJsonList( List<dynamic> jsonList){
    if(jsonList == null) return;

    jsonList.forEach( (item) {
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });
  }

}

class Actor {
  int castId;
  String character;
  String creditId;
  int gender;
  int id;
  String name;
  int order;
  String profilePath;

  Actor({
    this.castId,
    this.character,
    this.creditId,
    this.gender,
    this.id,
    this.name,
    this.order,
    this.profilePath,
  });

  Actor.fromJsonMap( Map<String, dynamic> json){
    castId        = json['cast_id'];
    character     = json['character'];
    creditId      = json['credit_id'];
    gender        = json['gender'];
    id            = json['id'];
    name          = json['name'];
    order         = json['order'];
    profilePath   = json['profile_path'];
  }

   getPhoto(){
    if(profilePath == null){
      return 'data:image/png;base64,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';
    }else{
      return 'https://image.tmdb.org/t/p/w500/$profilePath';

    }
  }
}
