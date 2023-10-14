import 'package:flutter/material.dart';
import 'package:questions_app/questions_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuestionSummary({super.key, required this.summaryData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: SummaryItems(itemData: data),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
