import 'package:flutter/material.dart';

class PackageBadge extends StatelessWidget {
  final String _author;
  final int _likes;
  final String _name;
  final String _version;
  const PackageBadge({
    super.key,
    required final String author,
    required final int likes,
    required final String name,
    required final String version,
  })  : _author = author,
        _likes = likes,
        _name = name,
        _version = version;

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(_name),
              Text(_version),
              Text('$_likes 💙'),
              Text(_author),
            ],
          ),
        ),
      );
}
