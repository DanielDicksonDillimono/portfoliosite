import 'package:flutter/material.dart';
import 'package:portfoliosite/ui/core/themes/dimens.dart';
import 'package:portfoliosite/ui/privacypolicies/widgets/privacy_text_bodytherapy.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PrivacyPoliciesViewmodel {
  Future<void> loadPrivacyPolicies(
    String filePath,
    BuildContext context,
  ) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text('Privacy Policy')),
          body: Padding(
            padding: Dimens.paddingScreen(context),
            child: Column(
              children: [Expanded(child: SfPdfViewer.asset(filePath))],
            ),
          ),
        ),
      ),
    );
  }

  void openPrivacyPolicy(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PrivacyTextBodytherapy()),
    );
  }
}
