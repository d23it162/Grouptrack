import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get app_title => 'Grouptrack';

  @override
  String get app_tag_line => 'Stay Close, Anywhere!';

  @override
  String get alert_confirm_default_title => 'Are you sure';

  @override
  String get common_get_started => 'Get started';

  @override
  String get common_all => 'All';

  @override
  String get common_next => 'Next';

  @override
  String get common_yes => 'Yes';

  @override
  String get common_save => 'Save';

  @override
  String get common_cancel => 'Cancel';

  @override
  String get common_delete => 'Delete';

  @override
  String get common_okay => 'Okay';

  @override
  String get common_today => 'Today';

  @override
  String get common_yesterday => 'Yesterday';

  @override
  String get common_now => 'Now';

  @override
  String get common_just_now => 'Just now';

  @override
  String get common_min_ago => 'min ago';

  @override
  String get common_hour_ago => 'hour ago';

  @override
  String get common_hours_ago => 'hours ago';

  @override
  String get common_add => 'Add';

  @override
  String get common_verify => 'Verify';

  @override
  String get common_go_to_setting => 'Go to settings';

  @override
  String commonMembers(num memberCount) {
    String _temp0 = intl.Intl.pluralLogic(
      memberCount,
      locale: localeName,
      other: 'Members',
      one: 'Member',
    );
    return '$memberCount $_temp0';
  }

  @override
  String get common_retry => 'Retry';

  @override
  String get common_remove => 'Remove';

  @override
  String get common_skip => 'Skip';

  @override
  String get on_internet_error_title => 'No Internet!';

  @override
  String get on_internet_error_sub_title => 'No Internet Connection. Please check your network settings and try again.';

  @override
  String get errorNoConnection => 'No internet connection detected.';

  @override
  String get errorGeneric => 'Something went wrong. Please try again.';

  @override
  String get intro_1_title => 'Live location';

  @override
  String get intro_2_title => 'Receive alerts';

  @override
  String get intro_3_title => 'Location history';

  @override
  String get intro_1_subTitle => 'Share your location seamlessly, connecting with just a click.';

  @override
  String get intro_2_subTitle => 'Stay in the know with instant alerts – whether loved ones enter or leave.';

  @override
  String get intro_3_subTitle => 'Simplify your connections and insights – explore drive reports, location history effortlessly.';

  @override
  String get sign_in_options_continue_with_google_btn_title => 'Continue with Google';

  @override
  String get sign_in_options_continue_with_apple_btn_title => 'Continue with Apple';

  @override
  String get onboard_pick_name_title => 'What\'s your name?';

  @override
  String get onboard_pick_name_hint_first_name => 'First Name';

  @override
  String get onboard_pick_name_hint_last_name => 'Last Name';

  @override
  String get home_create_space_title => 'Create new';

  @override
  String get home_join_space_title => 'Join group';

  @override
  String home_space_owner_text(String spaceName) {
    return 'By $spaceName';
  }

  @override
  String get home_select_space_text => 'Select a group';

  @override
  String get home_session_expired_title => 'You\'ve been logged out';

  @override
  String get home_session_expired_message => 'You need to sign in again to continue using the application.';

  @override
  String get home_map_style_bottom_sheet_title_text => 'Choose Map Style';

  @override
  String get home_map_style_type_app_theme_text => 'App Theme';

  @override
  String get home_map_selected_type_normal_text => 'Normal';

  @override
  String get home_map_selected_type_terrain_text => 'Terrain';

  @override
  String get home_map_selected_type_satellite_text => 'Satellite';

  @override
  String get map_selected_user_item_no_network_state_text => 'No network or phone off';

  @override
  String get map_selected_user_item_location_off_state_text => 'Location off';

  @override
  String get map_selected_user_item_online_state_text => 'Online';

  @override
  String get create_space_give_your_space_name_title => 'Give your group name';

  @override
  String get create_space_tip_text => 'Tips: You create dedicated groups for work, family, friends, and more.';

  @override
  String get create_space_name_title => 'Group name';

  @override
  String get create_space_suggestion_family_text => 'Family';

  @override
  String get create_space_suggestion_friends_text => 'Friends';

  @override
  String get create_space_suggestion_special_someone_text => 'Special someone';

  @override
  String get create_space_suggestion_siblings_text => 'Siblings';

  @override
  String get create_space_suggestion_office_squad_text => 'Office squad';

  @override
  String get create_space_suggestion_colleagues_text => 'Colleagues';

  @override
  String get create_space_suggestion_team_unity_text => 'Team Unity';

  @override
  String get create_space_suggestion_my_squad_text => 'My Squad';

  @override
  String get create_space_suggestion_heart_mates_text => 'Heart mates';

  @override
  String get create_space_suggestion_blood_bond_text => 'Blood bond';

  @override
  String get create_space_some_suggestion_title => 'Some suggestion...';

  @override
  String get join_space_title => 'Join group';

  @override
  String get join_space_invite_code_title => 'Enter the invite code';

  @override
  String get join_space_get_code_from_space_text => 'Get the code from the group creator to join.';

  @override
  String get join_space_already_joined_error_text => 'You are already member of this group';

  @override
  String get join_space_invalid_code_error_text => 'It appears the code is no longer valid or has expired. please review and enter valid code.';

  @override
  String get join_space_prompt_title => 'Congratulations!';

  @override
  String join_space_prompt_subtitle(String spaceName) {
    return 'You\'re now a member of the $spaceName group for sharing your real-time location.';
  }

  @override
  String get join_space_invitation_title => 'Have a Group Invitation?';

  @override
  String get join_space_get_code_from_space_creator_title => 'Get the code from the group creator and input it here to join.\n\nIf you don\'t have an invitation code, create a new group.';

  @override
  String get join_space_create_new_space_title => 'Create a new group';

  @override
  String get invite_code_title => 'Invite code';

  @override
  String invite_code_invite_member_title(String spaceName) {
    return 'Invite members to the $spaceName';
  }

  @override
  String get invite_code_invite_member_subtitle => 'Share this invite code with your trusted ones in your own style. Connecting is as flexible as you are.';

  @override
  String get invite_code_active_code_text => 'This code will be active for 2 days.';

  @override
  String get invite_code_share_code_title => 'Share code';

  @override
  String invite_code_share_code_text(String invitationCode) {
    return 'Join me on Group Track! Use this invite code to join group: $invitationCode';
  }

  @override
  String get settings_title => 'Settings';

  @override
  String get settings_profile_title => 'Profile';

  @override
  String get settings_your_space_title => 'Your groups';

  @override
  String get settings_other_title => 'Other';

  @override
  String get settings_other_option_privacy_policy_text => 'Privacy policy';

  @override
  String get settings_other_option_contact_support_text => 'Contact support';

  @override
  String get settings_other_option_about_us_text => 'About us';

  @override
  String get settings_other_option_sign_out_text => 'Sign out';

  @override
  String get settings_sign_out_alert_title => 'See you soon!';

  @override
  String get settings_sign_out_alert_description => 'Are you sure you want to sign out?';

  @override
  String get settings_subscriptions_title => 'Subscriptions';

  @override
  String get message_add_member_to_send_message_title => 'Add members to send messages';

  @override
  String get message_add_member_to_send_message_subtitle => 'At least one member needs to join your group to be able to chat.';

  @override
  String get message_add_new_member_title => 'Add a new member';

  @override
  String get message_tap_to_send_new_message_text => 'Tap on ‘+’ to send new message to anyone in your group';

  @override
  String get message_delete_thread_title => 'Delete thread?';

  @override
  String get message_delete_thread_subtitle => 'Are you sure you want to delete this thread? This action cannot be undone';

  @override
  String message_member_count_text(int memberCount) {
    return ' +$memberCount';
  }

  @override
  String get chat_start_new_chat_title => 'Start new chat';

  @override
  String get chat_type_message_hint_text => 'Type message';

  @override
  String get chat_seen_message_text => 'seen';

  @override
  String chat_seen_by_message_text(String members) {
    return ' seen by $members';
  }

  @override
  String get edit_profile_title => 'Edit profile';

  @override
  String get edit_profile_first_name_title => 'First name';

  @override
  String get edit_profile_last_name_title => 'Last name';

  @override
  String get edit_profile_email_title => 'Email';

  @override
  String get edit_profile_alert_title => 'Sorry to see you go!';

  @override
  String get edit_profile_alert_description => 'Deleting your account is permanent and you will lose all your data. Are you sure you want to delete your account?';

  @override
  String get edit_profile_gallery_option_text => 'Gallery';

  @override
  String get edit_profile_camera_option_text => 'Camera';

  @override
  String get edit_profile_remove_photo_option_text => 'Remove photo';

  @override
  String get edit_profile_cropper_text => 'Cropper';

  @override
  String get edit_profile_delete_account_title => 'Delete account';

  @override
  String get edit_profile_change_admin_text => 'Change';

  @override
  String get edit_profile_change_admin_title => 'Change admin';

  @override
  String get edit_profile_change_admin_subtitle => 'To delete your account, you must first assign another member as the admin of the group where you are currently the admin. You cannot delete the group until the admin role is reassigned.';

  @override
  String get edit_space_name_title => 'Group name';

  @override
  String get edit_space_member_location_sharing_title => 'Member location sharing';

  @override
  String get edit_space_your_location_sharing_title => 'Your location sharing';

  @override
  String get edit_space_delete_space_title => 'Delete group';

  @override
  String get edit_space_leave_space_title => 'Leave group';

  @override
  String get edit_space_leave_space_alert_message => 'Are you sure you want to leave this group? You will no longer be able to view or share location with member of this group';

  @override
  String get edit_space_delete_space_alert_message => 'Confirming will permanently delete this group and associated data. This action cannot be undone.';

  @override
  String edit_space_no_member_in_space_text(String spaceName) {
    return 'No members in $spaceName';
  }

  @override
  String get edit_space_leave_space_alert_confirm_button_text => 'Leave';

  @override
  String get edit_space_remove_user_title => 'Remove member';

  @override
  String get edit_space_remove_user_subtitle => 'This action cannot be undone, are you sure you want to remove this member from group';

  @override
  String get edit_space_admin_text => '(Admin)';

  @override
  String get edit_space_change_admin_text => 'Change';

  @override
  String get edit_space_change_admin_title => 'Change Admin';

  @override
  String get edit_space_change_admin_subtitle => 'To leave the group, you must assign another member as admin. This action is irreversible unless the new admin changes it.';

  @override
  String get edit_space_more_option_change_admin_text => 'Change admin';

  @override
  String get edit_space_more_option_regenerate_invitation_code_text => 'Regenerate invitation code';

  @override
  String get edit_space_invitation_code_title => 'Invitation code';

  @override
  String get contact_support_title => 'Contact support';

  @override
  String get contact_support_title_field => 'Title';

  @override
  String get contact_support_description_title => 'Description';

  @override
  String get contact_support_attachment => 'Attachment (if any)';

  @override
  String get contact_support_submit_title => 'Submit';

  @override
  String get contact_support_feedback_alert_message => 'Thanks! Your feedback has been recorded.';

  @override
  String get connection_share_title => 'Connect, share, explore join your trusted group for safe location sharing.';

  @override
  String get connection_share_subtitle => 'Simplify your connections and insights explore drive reports, location history effortlessly.';

  @override
  String get connection_continue_title => 'Continue';

  @override
  String get enable_permission_top_bar_text => 'Enable permission';

  @override
  String get enable_permission_screen_title => 'For an effective user experience on GroupTrack, it’s necessary to enable these permissions.';

  @override
  String get enable_location_access_title => 'Location Access';

  @override
  String get enable_location_access_sub_title => 'For seamless sharing of your live location with a trusted contact requires permission for location access.';

  @override
  String get enable_background_location_access_message_text => 'Please grant either Approximate location access permission or Fine location access permission';

  @override
  String get enable_background_location_access_title => 'Background location access';

  @override
  String get enable_background_location_access_sub_title => 'Granting background location permission allows you to effortlessly stay connected with trusted ones, ensuring seamless coordination and peace of mind in knowing their whereabouts.\n\nLocation permission > Select allow all the time';

  @override
  String get enable_notification_access_title => 'Notification Access';

  @override
  String get enable_notification_access_sun_title => 'Stay connected and receive timely updates by enabling notification permission for check-ins, alerts, and messages from your trusted one.';

  @override
  String get enable_permission_footer => 'We prioritize the security of your information and want to assure you that we do not share your data with any third-party entities.';

  @override
  String get enable_location_prompt_title => 'Location access required';

  @override
  String get enable_location_prompt_sub_title_1 => 'GroupTrack’s location-sharing feature works correctly when it can access your location all the time. This ensures it gives you accurate, real-time updates.';

  @override
  String get enable_location_prompt_sub_title_2 => 'Go to settings > Allow all the time';

  @override
  String get enable_location_service_title => 'Turn on location/GPS';

  @override
  String get enable_location_service_message => 'Your location/GPS setting must be turned on for GroupTrack to work. Please turn on location/GPS in the settings.';

  @override
  String get permission_footer_title => 'Stay closed to your loved one.';

  @override
  String get permission_footer_missing_location_permission_title => 'Location sharing is currently not possible.';

  @override
  String get permission_footer_subtitle => 'Allow GroupTrack to access your location data.';

  @override
  String get permission_footer_location_off_subtitle => 'Device location/GPS is off. Please turn it on!';

  @override
  String get permission_footer_missing_location_permission_subtitle => 'Some permissions are missing - grant access.';

  @override
  String get battery_optimization_dialog_title => 'Turn off Battery Optimization for Location Sharing';

  @override
  String get battery_optimization_dialog_message => 'For location sharing feature to work properly for your Groups, turn off Battery Optimization in your phone settings for the GroupTrack app. This won\'t affect your other apps.';

  @override
  String get battery_optimization_dialog_btn_change_now => 'Change now';

  @override
  String get places_list_title => 'Places';

  @override
  String get places_list_add_place_btn_text => 'Add place';

  @override
  String get places_list_suggestion_home_text => 'Home';

  @override
  String get places_list_suggestion_work_text => 'Work';

  @override
  String get places_list_suggestion_school_text => 'School';

  @override
  String get places_list_suggestion_gym_text => 'Gym';

  @override
  String get places_list_suggestion_library_text => 'Library';

  @override
  String get places_list_suggestion_local_park_text => 'Local park';

  @override
  String get places_list_delete_dialog_content_text => 'Are you sure you want to delete this place? This action cannot be undone.';

  @override
  String get place_list_add_member_to_add_places_title => 'Add members to set up geofence';

  @override
  String get place_list_add_member_to_add_places_subtitle => 'At least one member needs to join your group to create geofence locations.';

  @override
  String get add_new_place_title => 'Add a new place';

  @override
  String get add_new_place_suggestion_text => 'Some suggestions...';

  @override
  String get add_new_place_search_hint_text => 'Search address and location name';

  @override
  String get add_new_place_location_on_map_text => 'Locate on map';

  @override
  String get locate_on_map_title => 'Locate on Map';

  @override
  String locate_on_map_prompt_added_title_text(Object placeName) {
    return '$placeName Added';
  }

  @override
  String get locate_on_map_prompt_sub_title_text => 'You will be notified when members of your group arrive/leave this place';

  @override
  String get locate_on_map_prompt_got_it_btn_text => 'Got it';

  @override
  String get choose_place_screen_title => 'Choose place name';

  @override
  String get choose_place_search_hint_text => 'Enter place name';

  @override
  String get choose_place_suggestion_text => 'Some suggestions...';

  @override
  String get choose_place_add_place_btn_text => 'Add place';

  @override
  String choose_place_prompt_added_title_text(Object placeName) {
    return '$placeName Added';
  }

  @override
  String get choose_place_prompt_sub_title_text => 'You will be notified when members of your group arrive/leave this place';

  @override
  String get choose_place_prompt_got_it_btn_text => 'Got it';

  @override
  String get edit_place_title_text => 'Edit place';

  @override
  String get edit_place_getting_address_text => 'Getting Address…';

  @override
  String get edit_place_detail_title_text => 'Place details';

  @override
  String get edit_place_get_notified_title_text => 'Get notified when...';

  @override
  String get edit_place_arrives_text => 'Arrives';

  @override
  String get edit_place_leaves_text => 'Leaves';

  @override
  String get edit_place_delete_place_btn_text => 'Delete place';

  @override
  String get edit_place_only_admin_edit_text => 'Only admin can edit or delete this place.';

  @override
  String get edit_place_delete_dialog_sub_title_text => 'Are you sure you want to delete this place? This action cannot be undone.';

  @override
  String get journey_timeline_title => 'Timeline';

  @override
  String get journey_timeline_title_your_timeline => 'Your Timeline';

  @override
  String journey_timeline_title_other_user(Object userName) {
    return '$userName\'s Timeline';
  }

  @override
  String get journey_timeline_add_place_btn_text => 'Add Place';

  @override
  String get journey_timeline_unknown_address_text => 'Unknown address.';

  @override
  String get journey_timeline_getting_address_text => 'Getting address...';

  @override
  String get journey_timeline_empty_screen_text => 'No location history found!';

  @override
  String journey_timeline_Since_text(Object date) {
    return 'Since $date';
  }

  @override
  String journey_timeline_today_text(Object date) {
    return 'Today $date';
  }

  @override
  String get journey_timeline_date_picker_select_text => 'Select';

  @override
  String journey_timeline_steady_duration_text(String? duration) {
    return '  |  Steady for $duration';
  }

  @override
  String get journey_detail_getting_address_text => 'Getting the address...';

  @override
  String get subscription_title => 'Subscription';

  @override
  String get subscription_sub_title => 'Choose the plan that’s right for you downgrade or upgrade anytime.';

  @override
  String get subscription_auto_renewable_text => 'Auto renewable';

  @override
  String get subscription_cancel_anytime_text => 'Cancel anytime';

  @override
  String get subscription_go_to_payment_text => 'Go to payment';
}
