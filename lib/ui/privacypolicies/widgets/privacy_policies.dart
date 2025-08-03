import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoliosite/ui/core/localization/applocalization.dart';
import 'package:portfoliosite/ui/privacypolicies/models/privacy_policies_viewmodel.dart';

class PrivacyPolicies extends StatelessWidget {
  PrivacyPolicies({super.key});
  final PrivacyPoliciesViewmodel _viewModel = PrivacyPoliciesViewmodel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Applocalization.of(context).privacyPolicies)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Applocalization.of(context).privacyPolicies,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SizedBox(height: 16.0),
              Text(
                'Privacy Polices for various projects:',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 16.0),
              // Add more sections as needed
              Column(
                children: [
                  ListTile(
                    leading: Icon(CupertinoIcons.paperclip),
                    title: Text(
                      Applocalization.of(context).privacyPolicyBodyTherapy,
                    ),
                    subtitle: Text(
                      Applocalization.of(
                        context,
                      ).privacyPolicyBodyTherapyLastUpdated,
                    ),
                    onTap: () {
                      _viewModel.openPrivacyPolicy(context);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
