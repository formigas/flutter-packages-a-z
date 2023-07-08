import 'package:app/code_highlight_widget.dart';
import 'package:app/package_badge_widget.dart';
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
                PackageBadge(
                  author: 'christianfindlay.com',
                  likes: 14,
                  name: 'austerity',
                  version: '1.1.0',
                ),
                const SizedBox(height: 32),
                Text(
                  '"You lack discipline! It\'s ok, though. This is like having discipline."',
                  textAlign: TextAlign.center,
                ),
                Text(
                  'This package basically enables all available linter rules\n(except for those that are contradicting).',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
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
