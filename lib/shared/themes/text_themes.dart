import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class TextThemes {
  static String get fontFamily => GoogleFonts.inter().fontFamily ?? '';

  static _ITextTheme get pureWhite => _CTextTheme(color: ColorThemes.pureWhite);

  static _ITextTheme get lightGrey => _CTextTheme(color: ColorThemes.lightGrey);

  static _ITextTheme get spotsBlack =>
      _CTextTheme(color: ColorThemes.spotsBlack);

  static _ITextTheme get secondaryText =>
      _CTextTheme(color: ColorThemes.secondaryText);

  static _ITextTheme get primaryColor =>
      _CTextTheme(color: ColorThemes.primary);

  static _ITextTheme get darkGrey => _CTextTheme(color: ColorThemes.darkGrey);

  static _ITextTheme get error => _CTextTheme(color: ColorThemes.alert);
}

abstract class _ITextTheme {
  TextStyle get largeTitle;

  TextStyle get title1;

  TextStyle get title2;

  TextStyle get headline;

  TextStyle get body;

  TextStyle get footnote;
}

// ignore: unused_element
class _CTextTheme implements _ITextTheme {
  factory _CTextTheme({
    final FontWeight? weight,
    final Color? color,
  }) {
    final _base = TextStyle(
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: weight,
      color: color,
    );

    final largeTitle = _base.copyWith(
      fontSize: 44,
      fontWeight: FontWeight.w700,
    );

    final title1 = _base.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w700,
    );

    final title2 = _base.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );

    final headline = _base.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );

    final body = _base.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );

    final footnote = _base.copyWith(
      fontSize: 13,
      fontWeight: FontWeight.w300,
    );

    return _CTextTheme._(
      largeTitle,
      title1,
      title2,
      headline,
      body,
      footnote,
    );
  }

  _CTextTheme._(
    this._footnote,
    this._headline,
    this._body,
    this._largeTitle,
    this._title1,
    this._title2,
  );

  final TextStyle _footnote;
  final TextStyle _headline;
  final TextStyle _body;
  final TextStyle _largeTitle;
  final TextStyle _title1;
  final TextStyle _title2;

  @override
  TextStyle get largeTitle => _largeTitle;

  @override
  TextStyle get title1 => _title1;

  @override
  TextStyle get title2 => _title2;

  @override
  TextStyle get headline => _headline;

  @override
  TextStyle get body => _body;

  @override
  TextStyle get footnote => _footnote;
}
