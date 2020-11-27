class Lugar {
  final String id;
  final String imagen;
  final String titulo;
  final String detalle;
  final int likes;

  Lugar({this.id, this.imagen, this.titulo, this.detalle, this.likes});

  factory Lugar.fromJson(Map<String, dynamic> json) {
    return Lugar(
      id: json['_id'] as String,
      imagen: json['imagen'] as String,
      titulo: json['titulo'] as String,
      detalle: json['detalle'] as String,
      likes: json['likes'] as int,
    );
  }
  @override
  String toString() {
    return 'Trans{id: $id, imagen: $imagen, titulo: $titulo, detalle: $detalle, likes: $likes}';
  }
}
