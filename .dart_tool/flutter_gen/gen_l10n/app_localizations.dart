import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @app_title.
  ///
  /// In en, this message translates to:
  /// **'Grouptrack'**
  String get app_title;

  /// No description provided for @app_tag_line.
  ///
  /// In en, this message translates to:
  /// **'Stay Close, Anywhere!'**
  String get app_tag_line;

  /// No description provided for @alert_confirm_default_title.
  ///
  /// In en, this message translates to:
  /// **'Are you sure'**
  String get alert_confirm_default_title;

  /// No description provided for @common_get_started.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get common_get_started;

  /// No description provided for @common_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get common_all;

  /// No description provided for @common_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get common_next;

  /// No description provided for @common_yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get common_yes;

  /// No description provided for @common_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get common_save;

  /// No description provided for @common_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get common_cancel;

  /// No description provided for @common_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get common_delete;

  /// No description provided for @common_okay.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get common_okay;

  /// No description provided for @common_today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get common_today;

  /// No description provided for @common_yesterday.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get common_yesterday;

  /// No description provided for @common_now.
  ///
  /// In en, this message translates to:
  /// **'Now'**
  String get common_now;

  /// No description provided for @common_just_now.
  ///
  /// In en, this message translates to:
  /// **'Just now'**
  String get common_just_now;

  /// No description provided for @common_min_ago.
  ///
  /// In en, this message translates to:
  /// **'min ago'**
  String get common_min_ago;

  /// No description provided for @common_hour_ago.
  ///
  /// In en, this message translates to:
  /// **'hour ago'**
  String get common_hour_ago;

  /// No description provided for @common_hours_ago.
  ///
  /// In en, this message translates to:
  /// **'hours ago'**
  String get common_hours_ago;

  /// No description provided for @common_add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get common_add;

  /// No description provided for @common_verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get common_verify;

  /// No description provided for @common_go_to_setting.
  ///
  /// In en, this message translates to:
  /// **'Go to settings'**
  String get common_go_to_setting;

  /// No description provided for @commonMembers.
  ///
  /// In en, this message translates to:
  /// **'{memberCount} {memberCount, plural, =1{Member} other{Members}}'**
  String commonMembers(num memberCount);

  /// No description provided for @common_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get common_retry;

  /// No description provided for @common_remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get common_remove;

  /// No description provided for @common_skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get common_skip;

  /// No description provided for @on_internet_error_title.
  ///
  /// In en, this message translates to:
  /// **'No Internet!'**
  String get on_internet_error_title;

  /// No description provided for @on_internet_error_sub_title.
  ///
  /// In en, this message translates to:
  /// **'No Internet Connection. Please check your network settings and try again.'**
  String get on_internet_error_sub_title;

  /// No description provided for @errorNoConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection detected.'**
  String get errorNoConnection;

  /// No description provided for @errorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get errorGeneric;

  /// No description provided for @intro_1_title.
  ///
  /// In en, this message translates to:
  /// **'Live location'**
  String get intro_1_title;

  /// No description provided for @intro_2_title.
  ///
  /// In en, this message translates to:
  /// **'Receive alerts'**
  String get intro_2_title;

  /// No description provided for @intro_3_title.
  ///
  /// In en, this message translates to:
  /// **'Location history'**
  String get intro_3_title;

  /// No description provided for @intro_1_subTitle.
  ///
  /// In en, this message translates to:
  /// **'Share your location seamlessly, connecting with just a click.'**
  String get intro_1_subTitle;

  /// No description provided for @intro_2_subTitle.
  ///
  /// In en, this message translates to:
  /// **'Stay in the know with instant alerts – whether loved ones enter or leave.'**
  String get intro_2_subTitle;

  /// No description provided for @intro_3_subTitle.
  ///
  /// In en, this message translates to:
  /// **'Simplify your connections and insights – explore drive reports, location history effortlessly.'**
  String get intro_3_subTitle;

  /// No description provided for @sign_in_options_continue_with_google_btn_title.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get sign_in_options_continue_with_google_btn_title;

  /// No description provided for @sign_in_options_continue_with_apple_btn_title.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get sign_in_options_continue_with_apple_btn_title;

  /// No description provided for @onboard_pick_name_title.
  ///
  /// In en, this message translates to:
  /// **'What\'s your name?'**
  String get onboard_pick_name_title;

  /// No description provided for @onboard_pick_name_hint_first_name.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get onboard_pick_name_hint_first_name;

  /// No description provided for @onboard_pick_name_hint_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get onboard_pick_name_hint_last_name;

  /// No description provided for @home_create_space_title.
  ///
  /// In en, this message translates to:
  /// **'Create new'**
  String get home_create_space_title;

  /// No description provided for @home_join_space_title.
  ///
  /// In en, this message translates to:
  /// **'Join group'**
  String get home_join_space_title;

  /// No description provided for @home_space_owner_text.
  ///
  /// In en, this message translates to:
  /// **'By {spaceName}'**
  String home_space_owner_text(String spaceName);

  /// No description provided for @home_select_space_text.
  ///
  /// In en, this message translates to:
  /// **'Select a group'**
  String get home_select_space_text;

  /// No description provided for @home_session_expired_title.
  ///
  /// In en, this message translates to:
  /// **'You\'ve been logged out'**
  String get home_session_expired_title;

  /// No description provided for @home_session_expired_message.
  ///
  /// In en, this message translates to:
  /// **'You need to sign in again to continue using the application.'**
  String get home_session_expired_message;

  /// No description provided for @home_map_style_bottom_sheet_title_text.
  ///
  /// In en, this message translates to:
  /// **'Choose Map Style'**
  String get home_map_style_bottom_sheet_title_text;

  /// No description provided for @home_map_style_type_app_theme_text.
  ///
  /// In en, this message translates to:
  /// **'App Theme'**
  String get home_map_style_type_app_theme_text;

  /// No description provided for @home_map_selected_type_normal_text.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get home_map_selected_type_normal_text;

  /// No description provided for @home_map_selected_type_terrain_text.
  ///
  /// In en, this message translates to:
  /// **'Terrain'**
  String get home_map_selected_type_terrain_text;

  /// No description provided for @home_map_selected_type_satellite_text.
  ///
  /// In en, this message translates to:
  /// **'Satellite'**
  String get home_map_selected_type_satellite_text;

  /// No description provided for @map_selected_user_item_no_network_state_text.
  ///
  /// In en, this message translates to:
  /// **'No network or phone off'**
  String get map_selected_user_item_no_network_state_text;

  /// No description provided for @map_selected_user_item_location_off_state_text.
  ///
  /// In en, this message translates to:
  /// **'Location off'**
  String get map_selected_user_item_location_off_state_text;

  /// No description provided for @map_selected_user_item_online_state_text.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get map_selected_user_item_online_state_text;

  /// No description provided for @create_space_give_your_space_name_title.
  ///
  /// In en, this message translates to:
  /// **'Give your group name'**
  String get create_space_give_your_space_name_title;

  /// No description provided for @create_space_tip_text.
  ///
  /// In en, this message translates to:
  /// **'Tips: You create dedicated groups for work, family, friends, and more.'**
  String get create_space_tip_text;

  /// No description provided for @create_space_name_title.
  ///
  /// In en, this message translates to:
  /// **'Group name'**
  String get create_space_name_title;

  /// No description provided for @create_space_suggestion_family_text.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get create_space_suggestion_family_text;

  /// No description provided for @create_space_suggestion_friends_text.
  ///
  /// In en, this message translates to:
  /// **'Friends'**
  String get create_space_suggestion_friends_text;

  /// No description provided for @create_space_suggestion_special_someone_text.
  ///
  /// In en, this message translates to:
  /// **'Special someone'**
  String get create_space_suggestion_special_someone_text;

  /// No description provided for @create_space_suggestion_siblings_text.
  ///
  /// In en, this message translates to:
  /// **'Siblings'**
  String get create_space_suggestion_siblings_text;

  /// No description provided for @create_space_suggestion_office_squad_text.
  ///
  /// In en, this message translates to:
  /// **'Office squad'**
  String get create_space_suggestion_office_squad_text;

  /// No description provided for @create_space_suggestion_colleagues_text.
  ///
  /// In en, this message translates to:
  /// **'Colleagues'**
  String get create_space_suggestion_colleagues_text;

  /// No description provided for @create_space_suggestion_team_unity_text.
  ///
  /// In en, this message translates to:
  /// **'Team Unity'**
  String get create_space_suggestion_team_unity_text;

  /// No description provided for @create_space_suggestion_my_squad_text.
  ///
  /// In en, this message translates to:
  /// **'My Squad'**
  String get create_space_suggestion_my_squad_text;

  /// No description provided for @create_space_suggestion_heart_mates_text.
  ///
  /// In en, this message translates to:
  /// **'Heart mates'**
  String get create_space_suggestion_heart_mates_text;

  /// No description provided for @create_space_suggestion_blood_bond_text.
  ///
  /// In en, this message translates to:
  /// **'Blood bond'**
  String get create_space_suggestion_blood_bond_text;

  /// No description provided for @create_space_some_suggestion_title.
  ///
  /// In en, this message translates to:
  /// **'Some suggestion...'**
  String get create_space_some_suggestion_title;

  /// No description provided for @join_space_title.
  ///
  /// In en, this message translates to:
  /// **'Join group'**
  String get join_space_title;

  /// No description provided for @join_space_invite_code_title.
  ///
  /// In en, this message translates to:
  /// **'Enter the invite code'**
  String get join_space_invite_code_title;

  /// No description provided for @join_space_get_code_from_space_text.
  ///
  /// In en, this message translates to:
  /// **'Get the code from the group creator to join.'**
  String get join_space_get_code_from_space_text;

  /// No description provided for @join_space_already_joined_error_text.
  ///
  /// In en, this message translates to:
  /// **'You are already member of this group'**
  String get join_space_already_joined_error_text;

  /// No description provided for @join_space_invalid_code_error_text.
  ///
  /// In en, this message translates to:
  /// **'It appears the code is no longer valid or has expired. please review and enter valid code.'**
  String get join_space_invalid_code_error_text;

  /// No description provided for @join_space_prompt_title.
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get join_space_prompt_title;

  /// No description provided for @join_space_prompt_subtitle.
  ///
  /// In en, this message translates to:
  /// **'You\'re now a member of the {spaceName} group for sharing your real-time location.'**
  String join_space_prompt_subtitle(String spaceName);

  /// No description provided for @join_space_invitation_title.
  ///
  /// In en, this message translates to:
  /// **'Have a Group Invitation?'**
  String get join_space_invitation_title;

  /// No description provided for @join_space_get_code_from_space_creator_title.
  ///
  /// In en, this message translates to:
  /// **'Get the code from the group creator and input it here to join.\n\nIf you don\'t have an invitation code, create a new group.'**
  String get join_space_get_code_from_space_creator_title;

  /// No description provided for @join_space_create_new_space_title.
  ///
  /// In en, this message translates to:
  /// **'Create a new group'**
  String get join_space_create_new_space_title;

  /// No description provided for @invite_code_title.
  ///
  /// In en, this message translates to:
  /// **'Invite code'**
  String get invite_code_title;

  /// No description provided for @invite_code_invite_member_title.
  ///
  /// In en, this message translates to:
  /// **'Invite members to the {spaceName}'**
  String invite_code_invite_member_title(String spaceName);

  /// No description provided for @invite_code_invite_member_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Share this invite code with your trusted ones in your own style. Connecting is as flexible as you are.'**
  String get invite_code_invite_member_subtitle;

  /// No description provided for @invite_code_active_code_text.
  ///
  /// In en, this message translates to:
  /// **'This code will be active for 2 days.'**
  String get invite_code_active_code_text;

  /// No description provided for @invite_code_share_code_title.
  ///
  /// In en, this message translates to:
  /// **'Share code'**
  String get invite_code_share_code_title;

  /// No description provided for @invite_code_share_code_text.
  ///
  /// In en, this message translates to:
  /// **'Join me on Group Track! Use this invite code to join group: {invitationCode}'**
  String invite_code_share_code_text(String invitationCode);

  /// No description provided for @settings_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_title;

  /// No description provided for @settings_profile_title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get settings_profile_title;

  /// No description provided for @settings_your_space_title.
  ///
  /// In en, this message translates to:
  /// **'Your groups'**
  String get settings_your_space_title;

  /// No description provided for @settings_other_title.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get settings_other_title;

  /// No description provided for @settings_other_option_privacy_policy_text.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get settings_other_option_privacy_policy_text;

  /// No description provided for @settings_other_option_contact_support_text.
  ///
  /// In en, this message translates to:
  /// **'Contact support'**
  String get settings_other_option_contact_support_text;

  /// No description provided for @settings_other_option_about_us_text.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get settings_other_option_about_us_text;

  /// No description provided for @settings_other_option_sign_out_text.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get settings_other_option_sign_out_text;

  /// No description provided for @settings_sign_out_alert_title.
  ///
  /// In en, this message translates to:
  /// **'See you soon!'**
  String get settings_sign_out_alert_title;

  /// No description provided for @settings_sign_out_alert_description.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get settings_sign_out_alert_description;

  /// No description provided for @settings_subscriptions_title.
  ///
  /// In en, this message translates to:
  /// **'Subscriptions'**
  String get settings_subscriptions_title;

  /// No description provided for @message_add_member_to_send_message_title.
  ///
  /// In en, this message translates to:
  /// **'Add members to send messages'**
  String get message_add_member_to_send_message_title;

  /// No description provided for @message_add_member_to_send_message_subtitle.
  ///
  /// In en, this message translates to:
  /// **'At least one member needs to join your group to be able to chat.'**
  String get message_add_member_to_send_message_subtitle;

  /// No description provided for @message_add_new_member_title.
  ///
  /// In en, this message translates to:
  /// **'Add a new member'**
  String get message_add_new_member_title;

  /// No description provided for @message_tap_to_send_new_message_text.
  ///
  /// In en, this message translates to:
  /// **'Tap on ‘+’ to send new message to anyone in your group'**
  String get message_tap_to_send_new_message_text;

  /// No description provided for @message_delete_thread_title.
  ///
  /// In en, this message translates to:
  /// **'Delete thread?'**
  String get message_delete_thread_title;

  /// No description provided for @message_delete_thread_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this thread? This action cannot be undone'**
  String get message_delete_thread_subtitle;

  /// No description provided for @message_member_count_text.
  ///
  /// In en, this message translates to:
  /// **' +{memberCount}'**
  String message_member_count_text(int memberCount);

  /// No description provided for @chat_start_new_chat_title.
  ///
  /// In en, this message translates to:
  /// **'Start new chat'**
  String get chat_start_new_chat_title;

  /// No description provided for @chat_type_message_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Type message'**
  String get chat_type_message_hint_text;

  /// No description provided for @chat_seen_message_text.
  ///
  /// In en, this message translates to:
  /// **'seen'**
  String get chat_seen_message_text;

  /// No description provided for @chat_seen_by_message_text.
  ///
  /// In en, this message translates to:
  /// **' seen by {members}'**
  String chat_seen_by_message_text(String members);

  /// No description provided for @edit_profile_title.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get edit_profile_title;

  /// No description provided for @edit_profile_first_name_title.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get edit_profile_first_name_title;

  /// No description provided for @edit_profile_last_name_title.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get edit_profile_last_name_title;

  /// No description provided for @edit_profile_email_title.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get edit_profile_email_title;

  /// No description provided for @edit_profile_alert_title.
  ///
  /// In en, this message translates to:
  /// **'Sorry to see you go!'**
  String get edit_profile_alert_title;

  /// No description provided for @edit_profile_alert_description.
  ///
  /// In en, this message translates to:
  /// **'Deleting your account is permanent and you will lose all your data. Are you sure you want to delete your account?'**
  String get edit_profile_alert_description;

  /// No description provided for @edit_profile_gallery_option_text.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get edit_profile_gallery_option_text;

  /// No description provided for @edit_profile_camera_option_text.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get edit_profile_camera_option_text;

  /// No description provided for @edit_profile_remove_photo_option_text.
  ///
  /// In en, this message translates to:
  /// **'Remove photo'**
  String get edit_profile_remove_photo_option_text;

  /// No description provided for @edit_profile_cropper_text.
  ///
  /// In en, this message translates to:
  /// **'Cropper'**
  String get edit_profile_cropper_text;

  /// No description provided for @edit_profile_delete_account_title.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get edit_profile_delete_account_title;

  /// No description provided for @edit_profile_change_admin_text.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get edit_profile_change_admin_text;

  /// No description provided for @edit_profile_change_admin_title.
  ///
  /// In en, this message translates to:
  /// **'Change admin'**
  String get edit_profile_change_admin_title;

  /// No description provided for @edit_profile_change_admin_subtitle.
  ///
  /// In en, this message translates to:
  /// **'To delete your account, you must first assign another member as the admin of the group where you are currently the admin. You cannot delete the group until the admin role is reassigned.'**
  String get edit_profile_change_admin_subtitle;

  /// No description provided for @edit_space_name_title.
  ///
  /// In en, this message translates to:
  /// **'Group name'**
  String get edit_space_name_title;

  /// No description provided for @edit_space_member_location_sharing_title.
  ///
  /// In en, this message translates to:
  /// **'Member location sharing'**
  String get edit_space_member_location_sharing_title;

  /// No description provided for @edit_space_your_location_sharing_title.
  ///
  /// In en, this message translates to:
  /// **'Your location sharing'**
  String get edit_space_your_location_sharing_title;

  /// No description provided for @edit_space_delete_space_title.
  ///
  /// In en, this message translates to:
  /// **'Delete group'**
  String get edit_space_delete_space_title;

  /// No description provided for @edit_space_leave_space_title.
  ///
  /// In en, this message translates to:
  /// **'Leave group'**
  String get edit_space_leave_space_title;

  /// No description provided for @edit_space_leave_space_alert_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to leave this group? You will no longer be able to view or share location with member of this group'**
  String get edit_space_leave_space_alert_message;

  /// No description provided for @edit_space_delete_space_alert_message.
  ///
  /// In en, this message translates to:
  /// **'Confirming will permanently delete this group and associated data. This action cannot be undone.'**
  String get edit_space_delete_space_alert_message;

  /// No description provided for @edit_space_no_member_in_space_text.
  ///
  /// In en, this message translates to:
  /// **'No members in {spaceName}'**
  String edit_space_no_member_in_space_text(String spaceName);

  /// No description provided for @edit_space_leave_space_alert_confirm_button_text.
  ///
  /// In en, this message translates to:
  /// **'Leave'**
  String get edit_space_leave_space_alert_confirm_button_text;

  /// No description provided for @edit_space_remove_user_title.
  ///
  /// In en, this message translates to:
  /// **'Remove member'**
  String get edit_space_remove_user_title;

  /// No description provided for @edit_space_remove_user_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone, are you sure you want to remove this member from group'**
  String get edit_space_remove_user_subtitle;

  /// No description provided for @edit_space_admin_text.
  ///
  /// In en, this message translates to:
  /// **'(Admin)'**
  String get edit_space_admin_text;

  /// No description provided for @edit_space_change_admin_text.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get edit_space_change_admin_text;

  /// No description provided for @edit_space_change_admin_title.
  ///
  /// In en, this message translates to:
  /// **'Change Admin'**
  String get edit_space_change_admin_title;

  /// No description provided for @edit_space_change_admin_subtitle.
  ///
  /// In en, this message translates to:
  /// **'To leave the group, you must assign another member as admin. This action is irreversible unless the new admin changes it.'**
  String get edit_space_change_admin_subtitle;

  /// No description provided for @edit_space_more_option_change_admin_text.
  ///
  /// In en, this message translates to:
  /// **'Change admin'**
  String get edit_space_more_option_change_admin_text;

  /// No description provided for @edit_space_more_option_regenerate_invitation_code_text.
  ///
  /// In en, this message translates to:
  /// **'Regenerate invitation code'**
  String get edit_space_more_option_regenerate_invitation_code_text;

  /// No description provided for @edit_space_invitation_code_title.
  ///
  /// In en, this message translates to:
  /// **'Invitation code'**
  String get edit_space_invitation_code_title;

  /// No description provided for @contact_support_title.
  ///
  /// In en, this message translates to:
  /// **'Contact support'**
  String get contact_support_title;

  /// No description provided for @contact_support_title_field.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get contact_support_title_field;

  /// No description provided for @contact_support_description_title.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get contact_support_description_title;

  /// No description provided for @contact_support_attachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment (if any)'**
  String get contact_support_attachment;

  /// No description provided for @contact_support_submit_title.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get contact_support_submit_title;

  /// No description provided for @contact_support_feedback_alert_message.
  ///
  /// In en, this message translates to:
  /// **'Thanks! Your feedback has been recorded.'**
  String get contact_support_feedback_alert_message;

  /// No description provided for @connection_share_title.
  ///
  /// In en, this message translates to:
  /// **'Connect, share, explore join your trusted group for safe location sharing.'**
  String get connection_share_title;

  /// No description provided for @connection_share_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Simplify your connections and insights explore drive reports, location history effortlessly.'**
  String get connection_share_subtitle;

  /// No description provided for @connection_continue_title.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get connection_continue_title;

  /// No description provided for @enable_permission_top_bar_text.
  ///
  /// In en, this message translates to:
  /// **'Enable permission'**
  String get enable_permission_top_bar_text;

  /// No description provided for @enable_permission_screen_title.
  ///
  /// In en, this message translates to:
  /// **'For an effective user experience on GroupTrack, it’s necessary to enable these permissions.'**
  String get enable_permission_screen_title;

  /// No description provided for @enable_location_access_title.
  ///
  /// In en, this message translates to:
  /// **'Location Access'**
  String get enable_location_access_title;

  /// No description provided for @enable_location_access_sub_title.
  ///
  /// In en, this message translates to:
  /// **'For seamless sharing of your live location with a trusted contact requires permission for location access.'**
  String get enable_location_access_sub_title;

  /// No description provided for @enable_background_location_access_message_text.
  ///
  /// In en, this message translates to:
  /// **'Please grant either Approximate location access permission or Fine location access permission'**
  String get enable_background_location_access_message_text;

  /// No description provided for @enable_background_location_access_title.
  ///
  /// In en, this message translates to:
  /// **'Background location access'**
  String get enable_background_location_access_title;

  /// No description provided for @enable_background_location_access_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Granting background location permission allows you to effortlessly stay connected with trusted ones, ensuring seamless coordination and peace of mind in knowing their whereabouts.\n\nLocation permission > Select allow all the time'**
  String get enable_background_location_access_sub_title;

  /// No description provided for @enable_notification_access_title.
  ///
  /// In en, this message translates to:
  /// **'Notification Access'**
  String get enable_notification_access_title;

  /// No description provided for @enable_notification_access_sun_title.
  ///
  /// In en, this message translates to:
  /// **'Stay connected and receive timely updates by enabling notification permission for check-ins, alerts, and messages from your trusted one.'**
  String get enable_notification_access_sun_title;

  /// No description provided for @enable_permission_footer.
  ///
  /// In en, this message translates to:
  /// **'We prioritize the security of your information and want to assure you that we do not share your data with any third-party entities.'**
  String get enable_permission_footer;

  /// No description provided for @enable_location_prompt_title.
  ///
  /// In en, this message translates to:
  /// **'Location access required'**
  String get enable_location_prompt_title;

  /// No description provided for @enable_location_prompt_sub_title_1.
  ///
  /// In en, this message translates to:
  /// **'GroupTrack’s location-sharing feature works correctly when it can access your location all the time. This ensures it gives you accurate, real-time updates.'**
  String get enable_location_prompt_sub_title_1;

  /// No description provided for @enable_location_prompt_sub_title_2.
  ///
  /// In en, this message translates to:
  /// **'Go to settings > Allow all the time'**
  String get enable_location_prompt_sub_title_2;

  /// No description provided for @enable_location_service_title.
  ///
  /// In en, this message translates to:
  /// **'Turn on location/GPS'**
  String get enable_location_service_title;

  /// No description provided for @enable_location_service_message.
  ///
  /// In en, this message translates to:
  /// **'Your location/GPS setting must be turned on for GroupTrack to work. Please turn on location/GPS in the settings.'**
  String get enable_location_service_message;

  /// No description provided for @permission_footer_title.
  ///
  /// In en, this message translates to:
  /// **'Stay closed to your loved one.'**
  String get permission_footer_title;

  /// No description provided for @permission_footer_missing_location_permission_title.
  ///
  /// In en, this message translates to:
  /// **'Location sharing is currently not possible.'**
  String get permission_footer_missing_location_permission_title;

  /// No description provided for @permission_footer_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow GroupTrack to access your location data.'**
  String get permission_footer_subtitle;

  /// No description provided for @permission_footer_location_off_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Device location/GPS is off. Please turn it on!'**
  String get permission_footer_location_off_subtitle;

  /// No description provided for @permission_footer_missing_location_permission_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Some permissions are missing - grant access.'**
  String get permission_footer_missing_location_permission_subtitle;

  /// No description provided for @battery_optimization_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Turn off Battery Optimization for Location Sharing'**
  String get battery_optimization_dialog_title;

  /// No description provided for @battery_optimization_dialog_message.
  ///
  /// In en, this message translates to:
  /// **'For location sharing feature to work properly for your Groups, turn off Battery Optimization in your phone settings for the GroupTrack app. This won\'t affect your other apps.'**
  String get battery_optimization_dialog_message;

  /// No description provided for @battery_optimization_dialog_btn_change_now.
  ///
  /// In en, this message translates to:
  /// **'Change now'**
  String get battery_optimization_dialog_btn_change_now;

  /// No description provided for @places_list_title.
  ///
  /// In en, this message translates to:
  /// **'Places'**
  String get places_list_title;

  /// No description provided for @places_list_add_place_btn_text.
  ///
  /// In en, this message translates to:
  /// **'Add place'**
  String get places_list_add_place_btn_text;

  /// No description provided for @places_list_suggestion_home_text.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get places_list_suggestion_home_text;

  /// No description provided for @places_list_suggestion_work_text.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get places_list_suggestion_work_text;

  /// No description provided for @places_list_suggestion_school_text.
  ///
  /// In en, this message translates to:
  /// **'School'**
  String get places_list_suggestion_school_text;

  /// No description provided for @places_list_suggestion_gym_text.
  ///
  /// In en, this message translates to:
  /// **'Gym'**
  String get places_list_suggestion_gym_text;

  /// No description provided for @places_list_suggestion_library_text.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get places_list_suggestion_library_text;

  /// No description provided for @places_list_suggestion_local_park_text.
  ///
  /// In en, this message translates to:
  /// **'Local park'**
  String get places_list_suggestion_local_park_text;

  /// No description provided for @places_list_delete_dialog_content_text.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this place? This action cannot be undone.'**
  String get places_list_delete_dialog_content_text;

  /// No description provided for @place_list_add_member_to_add_places_title.
  ///
  /// In en, this message translates to:
  /// **'Add members to set up geofence'**
  String get place_list_add_member_to_add_places_title;

  /// No description provided for @place_list_add_member_to_add_places_subtitle.
  ///
  /// In en, this message translates to:
  /// **'At least one member needs to join your group to create geofence locations.'**
  String get place_list_add_member_to_add_places_subtitle;

  /// No description provided for @add_new_place_title.
  ///
  /// In en, this message translates to:
  /// **'Add a new place'**
  String get add_new_place_title;

  /// No description provided for @add_new_place_suggestion_text.
  ///
  /// In en, this message translates to:
  /// **'Some suggestions...'**
  String get add_new_place_suggestion_text;

  /// No description provided for @add_new_place_search_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Search address and location name'**
  String get add_new_place_search_hint_text;

  /// No description provided for @add_new_place_location_on_map_text.
  ///
  /// In en, this message translates to:
  /// **'Locate on map'**
  String get add_new_place_location_on_map_text;

  /// No description provided for @locate_on_map_title.
  ///
  /// In en, this message translates to:
  /// **'Locate on Map'**
  String get locate_on_map_title;

  /// No description provided for @locate_on_map_prompt_added_title_text.
  ///
  /// In en, this message translates to:
  /// **'{placeName} Added'**
  String locate_on_map_prompt_added_title_text(Object placeName);

  /// No description provided for @locate_on_map_prompt_sub_title_text.
  ///
  /// In en, this message translates to:
  /// **'You will be notified when members of your group arrive/leave this place'**
  String get locate_on_map_prompt_sub_title_text;

  /// No description provided for @locate_on_map_prompt_got_it_btn_text.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get locate_on_map_prompt_got_it_btn_text;

  /// No description provided for @choose_place_screen_title.
  ///
  /// In en, this message translates to:
  /// **'Choose place name'**
  String get choose_place_screen_title;

  /// No description provided for @choose_place_search_hint_text.
  ///
  /// In en, this message translates to:
  /// **'Enter place name'**
  String get choose_place_search_hint_text;

  /// No description provided for @choose_place_suggestion_text.
  ///
  /// In en, this message translates to:
  /// **'Some suggestions...'**
  String get choose_place_suggestion_text;

  /// No description provided for @choose_place_add_place_btn_text.
  ///
  /// In en, this message translates to:
  /// **'Add place'**
  String get choose_place_add_place_btn_text;

  /// No description provided for @choose_place_prompt_added_title_text.
  ///
  /// In en, this message translates to:
  /// **'{placeName} Added'**
  String choose_place_prompt_added_title_text(Object placeName);

  /// No description provided for @choose_place_prompt_sub_title_text.
  ///
  /// In en, this message translates to:
  /// **'You will be notified when members of your group arrive/leave this place'**
  String get choose_place_prompt_sub_title_text;

  /// No description provided for @choose_place_prompt_got_it_btn_text.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get choose_place_prompt_got_it_btn_text;

  /// No description provided for @edit_place_title_text.
  ///
  /// In en, this message translates to:
  /// **'Edit place'**
  String get edit_place_title_text;

  /// No description provided for @edit_place_getting_address_text.
  ///
  /// In en, this message translates to:
  /// **'Getting Address…'**
  String get edit_place_getting_address_text;

  /// No description provided for @edit_place_detail_title_text.
  ///
  /// In en, this message translates to:
  /// **'Place details'**
  String get edit_place_detail_title_text;

  /// No description provided for @edit_place_get_notified_title_text.
  ///
  /// In en, this message translates to:
  /// **'Get notified when...'**
  String get edit_place_get_notified_title_text;

  /// No description provided for @edit_place_arrives_text.
  ///
  /// In en, this message translates to:
  /// **'Arrives'**
  String get edit_place_arrives_text;

  /// No description provided for @edit_place_leaves_text.
  ///
  /// In en, this message translates to:
  /// **'Leaves'**
  String get edit_place_leaves_text;

  /// No description provided for @edit_place_delete_place_btn_text.
  ///
  /// In en, this message translates to:
  /// **'Delete place'**
  String get edit_place_delete_place_btn_text;

  /// No description provided for @edit_place_only_admin_edit_text.
  ///
  /// In en, this message translates to:
  /// **'Only admin can edit or delete this place.'**
  String get edit_place_only_admin_edit_text;

  /// No description provided for @edit_place_delete_dialog_sub_title_text.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this place? This action cannot be undone.'**
  String get edit_place_delete_dialog_sub_title_text;

  /// No description provided for @journey_timeline_title.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get journey_timeline_title;

  /// No description provided for @journey_timeline_title_your_timeline.
  ///
  /// In en, this message translates to:
  /// **'Your Timeline'**
  String get journey_timeline_title_your_timeline;

  /// No description provided for @journey_timeline_title_other_user.
  ///
  /// In en, this message translates to:
  /// **'{userName}\'s Timeline'**
  String journey_timeline_title_other_user(Object userName);

  /// No description provided for @journey_timeline_add_place_btn_text.
  ///
  /// In en, this message translates to:
  /// **'Add Place'**
  String get journey_timeline_add_place_btn_text;

  /// No description provided for @journey_timeline_unknown_address_text.
  ///
  /// In en, this message translates to:
  /// **'Unknown address.'**
  String get journey_timeline_unknown_address_text;

  /// No description provided for @journey_timeline_getting_address_text.
  ///
  /// In en, this message translates to:
  /// **'Getting address...'**
  String get journey_timeline_getting_address_text;

  /// No description provided for @journey_timeline_empty_screen_text.
  ///
  /// In en, this message translates to:
  /// **'No location history found!'**
  String get journey_timeline_empty_screen_text;

  /// No description provided for @journey_timeline_Since_text.
  ///
  /// In en, this message translates to:
  /// **'Since {date}'**
  String journey_timeline_Since_text(Object date);

  /// No description provided for @journey_timeline_today_text.
  ///
  /// In en, this message translates to:
  /// **'Today {date}'**
  String journey_timeline_today_text(Object date);

  /// No description provided for @journey_timeline_date_picker_select_text.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get journey_timeline_date_picker_select_text;

  /// No description provided for @journey_timeline_steady_duration_text.
  ///
  /// In en, this message translates to:
  /// **'  |  Steady for {duration}'**
  String journey_timeline_steady_duration_text(String? duration);

  /// No description provided for @journey_detail_getting_address_text.
  ///
  /// In en, this message translates to:
  /// **'Getting the address...'**
  String get journey_detail_getting_address_text;

  /// No description provided for @subscription_title.
  ///
  /// In en, this message translates to:
  /// **'Subscription'**
  String get subscription_title;

  /// No description provided for @subscription_sub_title.
  ///
  /// In en, this message translates to:
  /// **'Choose the plan that’s right for you downgrade or upgrade anytime.'**
  String get subscription_sub_title;

  /// No description provided for @subscription_auto_renewable_text.
  ///
  /// In en, this message translates to:
  /// **'Auto renewable'**
  String get subscription_auto_renewable_text;

  /// No description provided for @subscription_cancel_anytime_text.
  ///
  /// In en, this message translates to:
  /// **'Cancel anytime'**
  String get subscription_cancel_anytime_text;

  /// No description provided for @subscription_go_to_payment_text.
  ///
  /// In en, this message translates to:
  /// **'Go to payment'**
  String get subscription_go_to_payment_text;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
