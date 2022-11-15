import '../../domain/entities/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  QuoteModel(
      {required String quote,
      required String role,
      required String show,
      required bool isAdult})
      : super(quote: quote, role: role, show: show, isAdult: isAdult);

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
      quote: json['quote'],
      role: json['role'],
      show: json['show'],
      isAdult: json['contain_adult_lang']);

  @override
  Map<String, dynamic> toJson() => {
        'quote': quote,
        'role': role,
        'show': show,
        'contain_adult_lang': isAdult
      };
}
