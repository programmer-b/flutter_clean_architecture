class QuoteEntity {
  final String quote;
  final String role;
  final String show;
  final bool isAdult;

  QuoteEntity(
      {required this.quote,
      required this.role,
      required this.show,
      required this.isAdult});

  factory QuoteEntity.fromJson(Map<String, dynamic> json) => QuoteEntity(
      quote: json['quote'],
      role: json['role'],
      show: json['show'],
      isAdult: json['contain_adult_lang']);

  Map<String, dynamic> toJson() => {
        'quote': quote,
        'role': role,
        'show': show,
        'contain_adult_lang': isAdult
      };

  static QuoteEntity empty() {
    return QuoteEntity(isAdult: false, quote: "", role: "", show: "");
  }
}
