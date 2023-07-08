import 'package:app/code_highlight_widget.dart';
import 'package:flutter/material.dart';

class AusterityView extends StatelessWidget {
  const AusterityView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                CodeHighlightWidget(
                  code: '''
dev_dependencies:
  austerity: ^1.1.0''',
                  fileName: 'pubspec.yaml',
                  language: 'yaml',
                ),
                const SizedBox(height: 16),
                CodeHighlightWidget(
                  code: 'include: package:austerity/analysis_options.yaml',
                  fileName: 'analysis_options.yaml',
                  language: 'yaml',
                ),
                const SizedBox(height: 16),
                CodeHighlightWidget(
                  code: '''
linter:
  rules:
    omit_local_variable_types: ignore''',
                  fileName: 'analysis_opions.yaml',
                  language: 'yaml',
                )
              ],
            ),
          ),
        ),
      );
}
