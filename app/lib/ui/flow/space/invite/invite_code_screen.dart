import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:style/button/bottom_sticky_overlay.dart';
import 'package:style/button/primary_button.dart';
import 'package:style/button/secondary_button.dart';
import 'package:style/extenstions/context_extenstions.dart';
import 'package:style/text/app_text_dart.dart';
import 'package:yourspace_flutter/domain/extenstions/context_extenstions.dart';
import 'package:yourspace_flutter/ui/components/app_page.dart';
import 'package:yourspace_flutter/ui/flow/navigation/routes.dart';

class InviteCode extends StatefulWidget {
  final String spaceName;
  final String inviteCode;
  final bool fromOnboard;

  const InviteCode({
    super.key,
    required this.spaceName,
    required this.inviteCode,
    this.fromOnboard = false,
  });

  @override
  State<InviteCode> createState() => _InviteCodeState();
}

class _InviteCodeState extends State<InviteCode> {
  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: widget.fromOnboard ? '' : context.l10n.invite_code_title,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const SizedBox(height: 8),
              Text(
                context.l10n.invite_code_invite_member_title(widget.spaceName),
                style: AppTextStyle.header4
                    .copyWith(color: context.colorScheme.textPrimary),
              ),
              const SizedBox(height: 16),
              Text(
                context.l10n.invite_code_invite_member_subtitle,
                style: AppTextStyle.body1
                    .copyWith(color: context.colorScheme.textDisabled),
              ),
              const SizedBox(height: 40),
              _inviteCode(context),
            ],
          ),
          _shareAndSkipButton(context),
        ],
      ),
    );
  }

  Widget _inviteCode(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
        color: context.colorScheme.containerLow,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          SelectableText(
            widget.inviteCode,
            style: AppTextStyle.header1
                .copyWith(color: context.colorScheme.primary),
          ),
          const SizedBox(height: 16),
          Text(
            context.l10n.invite_code_active_code_text,
            style: AppTextStyle.subtitle1
                .copyWith(color: context.colorScheme.textSecondary),
          )
        ],
      ),
    );
  }

  Widget _shareAndSkipButton(BuildContext context) {
    return BottomStickyOverlay(
      child: Column(
        children: [
          PrimaryButton(
            context.l10n.invite_code_share_code_title,
            onPressed: () {
              Share.share(
                  context.l10n.invite_code_share_code_text(widget.inviteCode));
            },
          ),
          if (widget.fromOnboard) ...[
            const SizedBox(height: 16),
            SecondaryButton(
              context.l10n.common_skip,
              onPressed: () {
                HomeRoute().go(context);
              },
            )
          ],
        ],
      ),
    );
  }
}
