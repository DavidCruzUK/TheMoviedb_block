import 'package:themoviedb_flutter_bloc/models/videos/results.dart';

class VideoItem {

  final int id;
  final List<Results> results;

	VideoItem.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		results = List<Results>.from(map["results"].map((it) => Results.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['results'] = results != null ? 
			this.results.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
