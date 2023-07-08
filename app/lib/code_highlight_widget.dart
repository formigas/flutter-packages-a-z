import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

class CodeHighlightWidget extends StatelessWidget {
  final String _code;
  final String? _fileName;
  final String _language;
  const CodeHighlightWidget({
    super.key,
    required final String code,
    final String? fileName = null,
    final String language = 'dart',
  })  : _code = code,
        _fileName = fileName,
        _language = language;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_fileName != null) Text(_fileName!),
              HighlightView(
                _code,
                language: _language,
                padding: EdgeInsets.all(16),
                theme: githubTheme.map(
                  (key, value) => MapEntry(
                      key,
                      key == 'root'
                          ? TextStyle(
                              color: Color(0xff333333),
                              backgroundColor:
                                  Theme.of(context).colorScheme.background,
                            )
                          : value),
                ),
              ),
            ],
          ),
        ),
      );
}
