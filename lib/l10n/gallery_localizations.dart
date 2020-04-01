import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// ignore: unused_import
import 'package:intl/intl.dart' as intl;

// ignore_for_file: unnecessary_brace_in_string_interps

/// Callers can lookup localized strings with an instance of GalleryLocalizations returned
/// by `GalleryLocalizations.of(context)`.
///
/// Applications need to include `GalleryLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'l10n/gallery_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: GalleryLocalizations.localizationsDelegates,
///   supportedLocales: GalleryLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: 0.16.0
///   intl_translation: 0.17.7
///
///   # rest of dependencies
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
/// be consistent with the languages listed in the GalleryLocalizations.supportedLocales
/// property.
abstract class GalleryLocalizations {
  GalleryLocalizations(String locale)
      : assert(locale != null),
        _localeName = intl.Intl.canonicalizedLocale(locale.toString());

  // ignore: unused_field
  final String _localeName;

  static GalleryLocalizations of(BuildContext context) {
    return Localizations.of<GalleryLocalizations>(
        context, GalleryLocalizations);
  }

  static const LocalizationsDelegate<GalleryLocalizations> delegate =
      _GalleryLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
  ];

  // Represents a link to the Flutter samples github repository.
  String get aboutFlutterSamplesRepo;

  // A description about how to view the source code for this app.
  String aboutDialogDescription(Object value);

  // Sign in label to sign into website.
  String get signIn;

  // Password was updated on a different device and the user is required to sign in again
  String get bannerDemoText;

  // Show the Banner to the user again.
  String get bannerDemoResetText;

  // When the user clicks this button the Banner will toggle multiple actions or a single action
  String get bannerDemoMultipleText;

  // If user clicks this button the leading icon in the Banner will disappear
  String get bannerDemoLeadingText;

  // When text is pressed the banner widget will be removed from the screen.
  String get dismiss;

  // Semantic label for back button to exit a study and return to the gallery home page.
  String get backToGallery;

  // The user can tap this button
  String get cardsDemoTappable;

  // If the user taps and hold this card. The card will toggled between on and off.
  String get cardsDemoSelectable;

  // Click to see more about the content in the cards demo.
  String get cardsDemoExplore;

  // Semantics label for Explore. Label tells user to explore the destinationName to the user. Example Explore Tamil
  String cardsDemoExploreSemantics(Object destinationName);

  // Semantics label for Share. Label tells user to share the destinationName to the user. Example Share Tamil
  String cardsDemoShareSemantics(Object destinationName);

  // The top 10 cities that you can visit in Tamil Nadu
  String get cardsDemoTravelDestinationTitle1;

  // Number 10
  String get cardsDemoTravelDestinationDescription1;

  // Thanjavur the city
  String get cardsDemoTravelDestinationCity1;

  // Thanjavur, Tamil Nadu is a location
  String get cardsDemoTravelDestinationLocation1;

  // Artist that are from Southern India
  String get cardsDemoTravelDestinationTitle2;

  // Silk Spinners
  String get cardsDemoTravelDestinationDescription2;

  // Chettinad the city
  String get cardsDemoTravelDestinationCity2;

  // Sivaganga, Tamil Nadu is a location
  String get cardsDemoTravelDestinationLocation2;

  // Brihadisvara Temple
  String get cardsDemoTravelDestinationTitle3;

  // Temples
  String get cardsDemoTravelDestinationDescription3;

  // Header title on home screen for Gallery section.
  String get homeHeaderGallery;

  // Header title on home screen for Categories section.
  String get homeHeaderCategories;

  // Study description for Shrine.
  String get shrineDescription;

  // Study description for Fortnightly.
  String get fortnightlyDescription;

  // Study description for Rally.
  String get rallyDescription;

  // Name for account made up by user.
  String get rallyAccountDataChecking;

  // Name for account made up by user.
  String get rallyAccountDataHomeSavings;

  // Name for account made up by user.
  String get rallyAccountDataCarSavings;

  // Name for account made up by user.
  String get rallyAccountDataVacation;

  // Title for account statistics. Below a percentage such as 0.10% will be displayed.
  String get rallyAccountDetailDataAnnualPercentageYield;

  // Title for account statistics. Below a dollar amount such as $100 will be displayed.
  String get rallyAccountDetailDataInterestRate;

  // Title for account statistics. Below a dollar amount such as $100 will be displayed.
  String get rallyAccountDetailDataInterestYtd;

  // Title for account statistics. Below a dollar amount such as $100 will be displayed.
  String get rallyAccountDetailDataInterestPaidLastYear;

  // Title for an account detail. Below a date for when the next account statement is released.
  String get rallyAccountDetailDataNextStatement;

  // Title for an account detail. Below the name of the account owner will be displayed.
  String get rallyAccountDetailDataAccountOwner;

  // Title for column where it displays the total dollar amount that the user has in bills.
  String get rallyBillDetailTotalAmount;

  // Title for column where it displays the amount that the user has paid.
  String get rallyBillDetailAmountPaid;

  // Title for column where it displays the amount that the user has due.
  String get rallyBillDetailAmountDue;

  // Category for budget, to sort expenses / bills in.
  String get rallyBudgetCategoryCoffeeShops;

  // Category for budget, to sort expenses / bills in.
  String get rallyBudgetCategoryGroceries;

  // Category for budget, to sort expenses / bills in.
  String get rallyBudgetCategoryRestaurants;

  // Category for budget, to sort expenses / bills in.
  String get rallyBudgetCategoryClothing;

  // Title for column where it displays the total dollar cap that the user has for its budget.
  String get rallyBudgetDetailTotalCap;

  // Title for column where it displays the dollar amount that the user has used in its budget.
  String get rallyBudgetDetailAmountUsed;

  // Title for column where it displays the dollar amount that the user has left in its budget.
  String get rallyBudgetDetailAmountLeft;

  // Link to go to the page 'Manage Accounts.
  String get rallySettingsManageAccounts;

  // Link to go to the page 'Tax Documents'.
  String get rallySettingsTaxDocuments;

  // Link to go to the page 'Passcode and Touch ID'.
  String get rallySettingsPasscodeAndTouchId;

  // Link to go to the page 'Notifications'.
  String get rallySettingsNotifications;

  // Link to go to the page 'Personal Information'.
  String get rallySettingsPersonalInformation;

  // Link to go to the page 'Paperless Settings'.
  String get rallySettingsPaperlessSettings;

  // Link to go to the page 'Find ATMs'.
  String get rallySettingsFindAtms;

  // Link to go to the page 'Help'.
  String get rallySettingsHelp;

  // Link to go to the page 'Sign out'.
  String get rallySettingsSignOut;

  // Title for 'total account value' overview page, a dollar value is displayed next to it.
  String get rallyAccountTotal;

  // Title for 'bills due' page, a dollar value is displayed next to it.
  String get rallyBillsDue;

  // Title for 'budget left' page, a dollar value is displayed next to it.
  String get rallyBudgetLeft;

  // Link text for accounts page.
  String get rallyAccounts;

  // Link text for bills page.
  String get rallyBills;

  // Link text for budgets page.
  String get rallyBudgets;

  // Title for alerts part of overview page.
  String get rallyAlerts;

  // Link text for button to see all data for category.
  String get rallySeeAll;

  // Displayed as 'dollar amount left', for example $46.70 LEFT, for a budget category.
  String get rallyFinanceLeft;

  // The navigation link to the overview page.
  String get rallyTitleOverview;

  // The navigation link to the accounts page.
  String get rallyTitleAccounts;

  // The navigation link to the bills page.
  String get rallyTitleBills;

  // The navigation link to the budgets page.
  String get rallyTitleBudgets;

  // The navigation link to the settings page.
  String get rallyTitleSettings;

  // Title for login page for the Rally app (Rally does not need to be translated as it is a product name).
  String get rallyLoginLoginToRally;

  // Prompt for signing up for an account.
  String get rallyLoginNoAccount;

  // Button text to sign up for an account.
  String get rallyLoginSignUp;

  // The username field in an login form.
  String get rallyLoginUsername;

  // The password field in an login form.
  String get rallyLoginPassword;

  // The label text to login.
  String get rallyLoginLabelLogin;

  // Text if the user wants to stay logged in.
  String get rallyLoginRememberMe;

  // Text for login button.
  String get rallyLoginButtonLogin;

  // Alert message shown when for example, user has used more than 90% of their shopping budget.
  String rallyAlertsMessageHeadsUpShopping(Object percent);

  // Alert message shown when for example, user has spent $120 on Restaurants this week.
  String rallyAlertsMessageSpentOnRestaurants(Object amount);

  // Alert message shown when for example, the user has spent $24 in ATM fees this month.
  String rallyAlertsMessageATMFees(Object amount);

  // Alert message shown when for example, the checking account is 1% higher than last month.
  String rallyAlertsMessageCheckingAccount(Object percent);

  // Alert message shown when you have unassigned transactions.
  String rallyAlertsMessageUnassignedTransactions(int count);

  // Semantics label for button to see all accounts. Accounts refer to bank account here.
  String get rallySeeAllAccounts;

  // Semantics label for button to see all bills.
  String get rallySeeAllBills;

  // Semantics label for button to see all budgets.
  String get rallySeeAllBudgets;

  // Semantics label for row with bank account name (for example checking) and its bank account number (for example 123), with how much money is deposited in it (for example $12).
  String rallyAccountAmount(
      Object accountName, Object accountNumber, Object amount);

  // Semantics label for row with a bill (example name is rent), when the bill is due (1/12/2019 for example) and for how much money ($12).
  String rallyBillAmount(Object billName, Object date, Object amount);

  // Semantics label for row with a budget (housing budget for example), with how much is used of the budget (for example $5), the total budget (for example $100) and the amount left in the budget (for example $95).
  String rallyBudgetAmount(Object budgetName, Object amountUsed,
      Object amountTotal, Object amountLeft);

  // Study description for Crane.
  String get craneDescription;

  // Category title on home screen for styles & other demos (for context, the styles demos consist of a color demo and a typography demo).
  String get homeCategoryReference;

  // Error message when opening the URL for a demo.
  String get demoInvalidURL;

  // Tooltip for options button in a demo.
  String get demoOptionsTooltip;

  // Tooltip for info button in a demo.
  String get demoInfoTooltip;

  // Tooltip for demo code button in a demo.
  String get demoCodeTooltip;

  // Tooltip for API documentation button in a demo.
  String get demoDocumentationTooltip;

  // Tooltip for Full Screen button in a demo.
  String get demoFullscreenTooltip;

  // Caption for a button to copy all text.
  String get demoCodeViewerCopyAll;

  // A message displayed to the user after clicking the COPY ALL button, if the text is successfully copied to the clipboard.
  String get demoCodeViewerCopiedToClipboardMessage;

  // A message displayed to the user after clicking the COPY ALL button, if the text CANNOT be copied to the clipboard.
  String demoCodeViewerFailedToCopyToClipboardMessage(Object error);

  // Title for an alert that explains what the options button does.
  String get demoOptionsFeatureTitle;

  // Description for an alert that explains what the options button does.
  String get demoOptionsFeatureDescription;

  // Title for the settings screen.
  String get settingsTitle;

  // Accessibility label for the settings button when settings are not showing.
  String get settingsButtonLabel;

  // Accessibility label for the settings button when settings are showing.
  String get settingsButtonCloseLabel;

  // Option label to indicate the system default will be used.
  String get settingsSystemDefault;

  // Title for text scaling setting.
  String get settingsTextScaling;

  // Option label for small text scale setting.
  String get settingsTextScalingSmall;

  // Option label for normal text scale setting.
  String get settingsTextScalingNormal;

  // Option label for large text scale setting.
  String get settingsTextScalingLarge;

  // Option label for huge text scale setting.
  String get settingsTextScalingHuge;

  // Title for text direction setting.
  String get settingsTextDirection;

  // Option label for locale-based text direction setting.
  String get settingsTextDirectionLocaleBased;

  // Option label for left-to-right text direction setting.
  String get settingsTextDirectionLTR;

  // Option label for right-to-left text direction setting.
  String get settingsTextDirectionRTL;

  // Title for locale setting.
  String get settingsLocale;

  // Title for platform mechanics (iOS, Android, macOS, etc.) setting.
  String get settingsPlatformMechanics;

  // Title for the theme setting.
  String get settingsTheme;

  // Title for the dark theme setting.
  String get settingsDarkTheme;

  // Title for the light theme setting.
  String get settingsLightTheme;

  // Title for slow motion setting.
  String get settingsSlowMotion;

  // Title for information button.
  String get settingsAbout;

  // Title for feedback button.
  String get settingsFeedback;

  // Title for attribution (TOASTER is a proper name and should remain in English).
  String get settingsAttribution;

  // Title for the material bottom app bar component demo.
  String get demoBottomAppBarTitle;

  // Subtitle for the material bottom app bar component demo.
  String get demoBottomAppBarSubtitle;

  // Description for the material bottom app bar component demo.
  String get demoBottomAppBarDescription;

  // A toggle for whether to have a notch (or cutout) in the bottom app bar demo.
  String get bottomAppBarNotch;

  // A setting for the position of the floating action button in the bottom app bar demo.
  String get bottomAppBarPosition;

  // A setting for the position of the floating action button in the bottom app bar that docks the button in the bar and aligns it at the end.
  String get bottomAppBarPositionDockedEnd;

  // A setting for the position of the floating action button in the bottom app bar that docks the button in the bar and aligns it in the center.
  String get bottomAppBarPositionDockedCenter;

  // A setting for the position of the floating action button in the bottom app bar that places the button above the bar and aligns it at the end.
  String get bottomAppBarPositionFloatingEnd;

  // A setting for the position of the floating action button in the bottom app bar that places the button above the bar and aligns it in the center.
  String get bottomAppBarPositionFloatingCenter;

  // Title for the material banner component demo.
  String get demoBannerTitle;

  // Subtitle for the material banner component demo.
  String get demoBannerSubtitle;

  // Description for the material banner component demo.
  String get demoBannerDescription;

  // Title for the material bottom navigation component demo.
  String get demoBottomNavigationTitle;

  // Subtitle for the material bottom navigation component demo.
  String get demoBottomNavigationSubtitle;

  // Option title for bottom navigation with persistent labels.
  String get demoBottomNavigationPersistentLabels;

  // Option title for bottom navigation with only a selected label.
  String get demoBottomNavigationSelectedLabel;

  // Description for the material bottom navigation component demo.
  String get demoBottomNavigationDescription;

  // Title for the material buttons component demo.
  String get demoButtonTitle;

  // Subtitle for the material buttons component demo.
  String get demoButtonSubtitle;

  // Title for the flat button component demo.
  String get demoFlatButtonTitle;

  // Description for the flat button component demo.
  String get demoFlatButtonDescription;

  // Title for the raised button component demo.
  String get demoRaisedButtonTitle;

  // Description for the raised button component demo.
  String get demoRaisedButtonDescription;

  // Title for the outline button component demo.
  String get demoOutlineButtonTitle;

  // Description for the outline button component demo.
  String get demoOutlineButtonDescription;

  // Title for the toggle buttons component demo.
  String get demoToggleButtonTitle;

  // Description for the toggle buttons component demo.
  String get demoToggleButtonDescription;

  // Title for the floating action button component demo.
  String get demoFloatingButtonTitle;

  // Description for the floating action button component demo.
  String get demoFloatingButtonDescription;

  // Title for the material cards component demo.
  String get demoCardTitle;

  // Subtitle for the material cards component demo.
  String get demoCardSubtitle;

  // Title for the material chips component demo.
  String get demoChipTitle;

  // Description for the material cards component demo.
  String get demoCardDescription;

  // Subtitle for the material chips component demo.
  String get demoChipSubtitle;

  // Title for the action chip component demo.
  String get demoActionChipTitle;

  // Description for the action chip component demo.
  String get demoActionChipDescription;

  // Title for the choice chip component demo.
  String get demoChoiceChipTitle;

  // Description for the choice chip component demo.
  String get demoChoiceChipDescription;

  // Title for the filter chip component demo.
  String get demoFilterChipTitle;

  // Description for the filter chip component demo.
  String get demoFilterChipDescription;

  // Title for the input chip component demo.
  String get demoInputChipTitle;

  // Description for the input chip component demo.
  String get demoInputChipDescription;

  // Title for the material data table component demo.
  String get demoDataTableTitle;

  // Subtitle for the material data table component demo.
  String get demoDataTableSubtitle;

  // Description for the material data table component demo.
  String get demoDataTableDescription;

  // Header for the data table component demo about nutrition.
  String get dataTableHeader;

  // Column header for desserts.
  String get dataTableColumnDessert;

  // Column header for number of calories.
  String get dataTableColumnCalories;

  // Column header for number of grams of fat.
  String get dataTableColumnFat;

  // Column header for number of grams of carbs.
  String get dataTableColumnCarbs;

  // Column header for number of grams of protein.
  String get dataTableColumnProtein;

  // Column header for number of milligrams of sodium.
  String get dataTableColumnSodium;

  // Column header for daily percentage of calcium.
  String get dataTableColumnCalcium;

  // Column header for daily percentage of iron.
  String get dataTableColumnIron;

  // Column row for frozen yogurt.
  String get dataTableRowFrozenYogurt;

  // Column row for Ice cream sandwich.
  String get dataTableRowIceCreamSandwich;

  // Column row for Eclair.
  String get dataTableRowEclair;

  // Column row for Cupcake.
  String get dataTableRowCupcake;

  // Column row for Gingerbread.
  String get dataTableRowGingerbread;

  // Column row for Jelly bean.
  String get dataTableRowJellyBean;

  // Column row for Lollipop.
  String get dataTableRowLollipop;

  // Column row for Honeycomb.
  String get dataTableRowHoneycomb;

  // Column row for Donut.
  String get dataTableRowDonut;

  // Column row for Apple pie.
  String get dataTableRowApplePie;

  // A dessert with sugar on it. The parameter is some type of dessert.
  String dataTableRowWithSugar(Object value);

  // A dessert with honey on it. The parameter is some type of dessert.
  String dataTableRowWithHoney(Object value);

  // Title for the material dialog component demo.
  String get demoDialogTitle;

  // Subtitle for the material dialog component demo.
  String get demoDialogSubtitle;

  // Title for the alert dialog component demo.
  String get demoAlertDialogTitle;

  // Description for the alert dialog component demo.
  String get demoAlertDialogDescription;

  // Title for the alert dialog with title component demo.
  String get demoAlertTitleDialogTitle;

  // Title for the simple dialog component demo.
  String get demoSimpleDialogTitle;

  // Description for the simple dialog component demo.
  String get demoSimpleDialogDescription;

  // Title for the grid lists component demo.
  String get demoGridListsTitle;

  // Subtitle for the grid lists component demo.
  String get demoGridListsSubtitle;

  // Description for the grid lists component demo.
  String get demoGridListsDescription;

  // Title for the grid lists image-only component demo.
  String get demoGridListsImageOnlyTitle;

  // Title for the grid lists component demo with headers on each tile.
  String get demoGridListsHeaderTitle;

  // Title for the grid lists component demo with footers on each tile.
  String get demoGridListsFooterTitle;

  // Title for the sliders component demo.
  String get demoSlidersTitle;

  // Short description for the sliders component demo.
  String get demoSlidersSubtitle;

  // Description for the sliders demo.
  String get demoSlidersDescription;

  // Title for the range sliders component demo.
  String get demoRangeSlidersTitle;

  // Description for the range sliders demo.
  String get demoRangeSlidersDescription;

  // Title for the custom sliders component demo.
  String get demoCustomSlidersTitle;

  // Description for the custom sliders demo.
  String get demoCustomSlidersDescription;

  // Text to describe a slider has a continuous value with an editable numerical value.
  String get demoSlidersContinuousWithEditableNumericalValue;

  // Text to describe that we have a slider with discrete values.
  String get demoSlidersDiscrete;

  // Text to describe that we have a slider with discrete values and a custom theme.
  String get demoSlidersDiscreteSliderWithCustomTheme;

  // Text to describe that we have a range slider with continuous values and a custom theme.
  String get demoSlidersContinuousRangeSliderWithCustomTheme;

  // Text to describe that we have a slider with continuous values.
  String get demoSlidersContinuous;

  // Label for input field that has an editable numerical value.
  String get demoSlidersEditableNumericalValue;

  // Title for the menu component demo.
  String get demoMenuTitle;

  // Title for the context menu component demo.
  String get demoContextMenuTitle;

  // Title for the sectioned menu component demo.
  String get demoSectionedMenuTitle;

  // Title for the simple menu component demo.
  String get demoSimpleMenuTitle;

  // Title for the checklist menu component demo.
  String get demoChecklistMenuTitle;

  // Short description for the menu component demo.
  String get demoMenuSubtitle;

  // Description for the menu demo.
  String get demoMenuDescription;

  // The first item in a menu.
  String get demoMenuItemValueOne;

  // The second item in a menu.
  String get demoMenuItemValueTwo;

  // The third item in a menu.
  String get demoMenuItemValueThree;

  // The number one.
  String get demoMenuOne;

  // The number two.
  String get demoMenuTwo;

  // The number three.
  String get demoMenuThree;

  // The number four.
  String get demoMenuFour;

  // Label next to a button that opens a menu. A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuAnItemWithAContextMenuButton;

  // Text label for a context menu item. A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuContextMenuItemOne;

  // Text label for a disabled menu item. A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuADisabledMenuItem;

  // Text label for a context menu item three. A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuContextMenuItemThree;

  // Label next to a button that opens a sectioned menu . A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuAnItemWithASectionedMenu;

  // Button to preview content.
  String get demoMenuPreview;

  // Button to share content.
  String get demoMenuShare;

  // Button to get link for content.
  String get demoMenuGetLink;

  // Button to remove content.
  String get demoMenuRemove;

  // A text to show what value was selected.
  String demoMenuSelected(Object value);

  // A text to show what value was checked.
  String demoMenuChecked(Object value);

  // Label next to a button that opens a simple menu. A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuAnItemWithASimpleMenu;

  // Label next to a button that opens a checklist menu. A menu displays a list of choices on a temporary surface. Used as an example in a demo.
  String get demoMenuAnItemWithAChecklistMenu;

  // Title for the fullscreen dialog component demo.
  String get demoFullscreenDialogTitle;

  // Description for the fullscreen dialog component demo.
  String get demoFullscreenDialogDescription;

  // Title for the cupertino activity indicator component demo.
  String get demoCupertinoActivityIndicatorTitle;

  // Subtitle for the cupertino activity indicator component demo.
  String get demoCupertinoActivityIndicatorSubtitle;

  // Description for the cupertino activity indicator component demo.
  String get demoCupertinoActivityIndicatorDescription;

  // Title for the cupertino buttons component demo.
  String get demoCupertinoButtonsTitle;

  // Subtitle for the cupertino buttons component demo.
  String get demoCupertinoButtonsSubtitle;

  // Description for the cupertino buttons component demo.
  String get demoCupertinoButtonsDescription;

  // Title for the cupertino alerts component demo.
  String get demoCupertinoAlertsTitle;

  // Subtitle for the cupertino alerts component demo.
  String get demoCupertinoAlertsSubtitle;

  // Title for the cupertino alert component demo.
  String get demoCupertinoAlertTitle;

  // Description for the cupertino alert component demo.
  String get demoCupertinoAlertDescription;

  // Title for the cupertino alert with title component demo.
  String get demoCupertinoAlertWithTitleTitle;

  // Title for the cupertino alert with buttons component demo.
  String get demoCupertinoAlertButtonsTitle;

  // Title for the cupertino alert buttons only component demo.
  String get demoCupertinoAlertButtonsOnlyTitle;

  // Title for the cupertino action sheet component demo.
  String get demoCupertinoActionSheetTitle;

  // Description for the cupertino action sheet component demo.
  String get demoCupertinoActionSheetDescription;

  // Title for the cupertino navigation bar component demo.
  String get demoCupertinoNavigationBarTitle;

  // Subtitle for the cupertino navigation bar component demo.
  String get demoCupertinoNavigationBarSubtitle;

  // Description for the cupertino navigation bar component demo.
  String get demoCupertinoNavigationBarDescription;

  // Title for the cupertino date and time pickers component demo.
  String get demoCupertinoPickerTitle;

  // Subtitle for the cupertino pickers component demo.
  String get demoCupertinoPickerSubtitle;

  // Description for the cupertino pickers component demo.
  String get demoCupertinoPickerDescription;

  // Label to open a countdown timer picker.
  String get demoCupertinoPickerTimer;

  // Label to open a date picker.
  String get demoCupertinoPickerDate;

  // Label to open a time picker.
  String get demoCupertinoPickerTime;

  // Label to open a date and time picker.
  String get demoCupertinoPickerDateTime;

  // Title for the cupertino pull-to-refresh component demo.
  String get demoCupertinoPullToRefreshTitle;

  // Subtitle for the cupertino pull-to-refresh component demo.
  String get demoCupertinoPullToRefreshSubtitle;

  // Description for the cupertino pull-to-refresh component demo.
  String get demoCupertinoPullToRefreshDescription;

  // Title for the cupertino segmented control component demo.
  String get demoCupertinoSegmentedControlTitle;

  // Subtitle for the cupertino segmented control component demo.
  String get demoCupertinoSegmentedControlSubtitle;

  // Description for the cupertino segmented control component demo.
  String get demoCupertinoSegmentedControlDescription;

  // Title for the cupertino slider component demo.
  String get demoCupertinoSliderTitle;

  // Subtitle for the cupertino slider component demo.
  String get demoCupertinoSliderSubtitle;

  // Description for the cupertino slider component demo.
  String get demoCupertinoSliderDescription;

  // A label for a continuous slider that indicates what value it is set to.
  String demoCupertinoSliderContinuous(Object value);

  // A label for a discrete slider that indicates what value it is set to.
  String demoCupertinoSliderDiscrete(Object value);

  // Subtitle for the cupertino switch component demo.
  String get demoCupertinoSwitchSubtitle;

  // Description for the cupertino switch component demo.
  String get demoCupertinoSwitchDescription;

  // Title for the cupertino bottom tab bar demo.
  String get demoCupertinoTabBarTitle;

  // Subtitle for the cupertino bottom tab bar demo.
  String get demoCupertinoTabBarSubtitle;

  // Description for the cupertino bottom tab bar demo.
  String get demoCupertinoTabBarDescription;

  // Title for the home tab in the bottom tab bar demo.
  String get cupertinoTabBarHomeTab;

  // Title for the chat tab in the bottom tab bar demo.
  String get cupertinoTabBarChatTab;

  // Title for the profile tab in the bottom tab bar demo.
  String get cupertinoTabBarProfileTab;

  // Title for the cupertino text field demo.
  String get demoCupertinoTextFieldTitle;

  // Subtitle for the cupertino text field demo.
  String get demoCupertinoTextFieldSubtitle;

  // Description for the cupertino text field demo.
  String get demoCupertinoTextFieldDescription;

  // The placeholder for a text field where a user would enter their PIN number.
  String get demoCupertinoTextFieldPIN;

  // Title for the colors demo.
  String get demoColorsTitle;

  // Subtitle for the colors demo.
  String get demoColorsSubtitle;

  // Description for the colors demo. Material Design should remain capitalized.
  String get demoColorsDescription;

  // Title for the typography demo.
  String get demoTypographyTitle;

  // Subtitle for the typography demo.
  String get demoTypographySubtitle;

  // Description for the typography demo. Material Design should remain capitalized.
  String get demoTypographyDescription;

  // Title for the 2D transformations demo.
  String get demo2dTransformationsTitle;

  // Subtitle for the 2D transformations demo.
  String get demo2dTransformationsSubtitle;

  // Description for the 2D transformations demo.
  String get demo2dTransformationsDescription;

  // Tooltip for a button to reset the transformations (scale, translation) for the 2D transformations demo.
  String get demo2dTransformationsResetTooltip;

  // Tooltip for a button to edit a tile.
  String get demo2dTransformationsEditTooltip;

  // Text for a generic button.
  String get buttonText;

  // Title for bottom sheet demo.
  String get demoBottomSheetTitle;

  // Description for bottom sheet demo.
  String get demoBottomSheetSubtitle;

  // Title for persistent bottom sheet demo.
  String get demoBottomSheetPersistentTitle;

  // Description for persistent bottom sheet demo.
  String get demoBottomSheetPersistentDescription;

  // Title for modal bottom sheet demo.
  String get demoBottomSheetModalTitle;

  // Description for modal bottom sheet demo.
  String get demoBottomSheetModalDescription;

  // Semantic label for add icon.
  String get demoBottomSheetAddLabel;

  // Button text to show bottom sheet.
  String get demoBottomSheetButtonText;

  // Generic header placeholder.
  String get demoBottomSheetHeader;

  // Generic item placeholder.
  String demoBottomSheetItem(Object value);

  // Title for lists demo.
  String get demoListsTitle;

  // Subtitle for lists demo.
  String get demoListsSubtitle;

  // Description for lists demo. This describes what a single row in a list consists of.
  String get demoListsDescription;

  // Title for lists demo with only one line of text per row.
  String get demoOneLineListsTitle;

  // Title for lists demo with two lines of text per row.
  String get demoTwoLineListsTitle;

  // Text that appears in the second line of a list item.
  String get demoListsSecondary;

  // Title for progress indicators demo.
  String get demoProgressIndicatorTitle;

  // Subtitle for progress indicators demo.
  String get demoProgressIndicatorSubtitle;

  // Title for circular progress indicator demo.
  String get demoCircularProgressIndicatorTitle;

  // Description for circular progress indicator demo.
  String get demoCircularProgressIndicatorDescription;

  // Title for linear progress indicator demo.
  String get demoLinearProgressIndicatorTitle;

  // Description for linear progress indicator demo.
  String get demoLinearProgressIndicatorDescription;

  // Title for pickers demo.
  String get demoPickersTitle;

  // Subtitle for pickers demo.
  String get demoPickersSubtitle;

  // Title for date picker demo.
  String get demoDatePickerTitle;

  // Description for date picker demo.
  String get demoDatePickerDescription;

  // Title for time picker demo.
  String get demoTimePickerTitle;

  // Description for time picker demo.
  String get demoTimePickerDescription;

  // Button text to show the date or time picker in the demo.
  String get demoPickersShowPicker;

  // Title for tabs demo.
  String get demoTabsTitle;

  // Title for tabs demo with a tab bar that scrolls.
  String get demoTabsScrollingTitle;

  // Title for tabs demo with a tab bar that doesn't scroll.
  String get demoTabsNonScrollingTitle;

  // Subtitle for tabs demo.
  String get demoTabsSubtitle;

  // Description for tabs demo.
  String get demoTabsDescription;

  // Title for snackbars demo.
  String get demoSnackbarsTitle;

  // Subtitle for snackbars demo.
  String get demoSnackbarsSubtitle;

  // Description for snackbars demo.
  String get demoSnackbarsDescription;

  // Label for button to show a snackbar.
  String get demoSnackbarsButtonLabel;

  // Text to show on a snackbar.
  String get demoSnackbarsText;

  // Label for action button text on the snackbar.
  String get demoSnackbarsActionButtonLabel;

  // Text that appears when you press on a snackbars’ action.
  String get demoSnackbarsAction;

  // Title for selection controls demo.
  String get demoSelectionControlsTitle;

  // Subtitle for selection controls demo.
  String get demoSelectionControlsSubtitle;

  // Title for the checkbox (selection controls) demo.
  String get demoSelectionControlsCheckboxTitle;

  // Description for the checkbox (selection controls) demo.
  String get demoSelectionControlsCheckboxDescription;

  // Title for the radio button (selection controls) demo.
  String get demoSelectionControlsRadioTitle;

  // Description for the radio button (selection controls) demo.
  String get demoSelectionControlsRadioDescription;

  // Title for the switches (selection controls) demo.
  String get demoSelectionControlsSwitchTitle;

  // Description for the switches (selection controls) demo.
  String get demoSelectionControlsSwitchDescription;

  // Title for text fields demo.
  String get demoBottomTextFieldsTitle;

  // Title for text fields demo.
  String get demoTextFieldTitle;

  // Description for text fields demo.
  String get demoTextFieldSubtitle;

  // Description for text fields demo.
  String get demoTextFieldDescription;

  // Label for show password icon.
  String get demoTextFieldShowPasswordLabel;

  // Label for hide password icon.
  String get demoTextFieldHidePasswordLabel;

  // Text that shows up on form errors.
  String get demoTextFieldFormErrors;

  // Shows up as submission error if name is not given in the form.
  String get demoTextFieldNameRequired;

  // Error that shows if non-alphabetical characters are given.
  String get demoTextFieldOnlyAlphabeticalChars;

  // Error that shows up if non-valid non-US phone number is given.
  String get demoTextFieldEnterUSPhoneNumber;

  // Error that shows up if password is not given.
  String get demoTextFieldEnterPassword;

  // Error that shows up, if the re-typed password does not match the already given password.
  String get demoTextFieldPasswordsDoNotMatch;

  // Placeholder for name field in form.
  String get demoTextFieldWhatDoPeopleCallYou;

  // The label for a name input field that is required (hence the star).
  String get demoTextFieldNameField;

  // Placeholder for when entering a phone number in a form.
  String get demoTextFieldWhereCanWeReachYou;

  // The label for a phone number input field that is required (hence the star).
  String get demoTextFieldPhoneNumber;

  // The label for an email address input field.
  String get demoTextFieldYourEmailAddress;

  // The label for an email address input field
  String get demoTextFieldEmail;

  // The placeholder text for biography/life story input field.
  String get demoTextFieldTellUsAboutYourself;

  // Helper text for biography/life story input field.
  String get demoTextFieldKeepItShort;

  // The label for for biography/life story input field.
  String get demoTextFieldLifeStory;

  // The label for salary input field.
  String get demoTextFieldSalary;

  // US currency, used as suffix in input field for salary.
  String get demoTextFieldUSD;

  // Helper text for password input field.
  String get demoTextFieldNoMoreThan;

  // Label for password input field, that is required (hence the star).
  String get demoTextFieldPassword;

  // Label for repeat password input field.
  String get demoTextFieldRetypePassword;

  // The submit button text for form.
  String get demoTextFieldSubmit;

  // Text that shows up when valid phone number and name is submitted in form.
  String demoTextFieldNameHasPhoneNumber(Object name, Object phoneNumber);

  // Helper text to indicate that * means that it is a required field.
  String get demoTextFieldRequiredField;

  // Title for tooltip demo.
  String get demoTooltipTitle;

  // Subtitle for tooltip demo.
  String get demoTooltipSubtitle;

  // Description for tooltip demo.
  String get demoTooltipDescription;

  // Instructions for how to trigger a tooltip in the tooltip demo.
  String get demoTooltipInstructions;

  // Title for Comments tab of bottom navigation.
  String get bottomNavigationCommentsTab;

  // Title for Calendar tab of bottom navigation.
  String get bottomNavigationCalendarTab;

  // Title for Account tab of bottom navigation.
  String get bottomNavigationAccountTab;

  // Title for Alarm tab of bottom navigation.
  String get bottomNavigationAlarmTab;

  // Title for Camera tab of bottom navigation.
  String get bottomNavigationCameraTab;

  // Accessibility label for the content placeholder in the bottom navigation demo
  String bottomNavigationContentPlaceholder(Object title);

  // Tooltip text for a create button.
  String get buttonTextCreate;

  // Message displayed after an option is selected from a dialog
  String dialogSelectedOption(Object value);

  // A chip component to turn on the lights.
  String get chipTurnOnLights;

  // A chip component to select a small size.
  String get chipSmall;

  // A chip component to select a medium size.
  String get chipMedium;

  // A chip component to select a large size.
  String get chipLarge;

  // A chip component to filter selection by elevators.
  String get chipElevator;

  // A chip component to filter selection by washers.
  String get chipWasher;

  // A chip component to filter selection by fireplaces.
  String get chipFireplace;

  // A chip component to that indicates a biking selection.
  String get chipBiking;

  // Alert dialog message to discard draft.
  String get dialogDiscardTitle;

  // Alert dialog title to use location services.
  String get dialogLocationTitle;

  // Alert dialog description to use location services.
  String get dialogLocationDescription;

  // Alert dialog cancel option.
  String get dialogCancel;

  // Alert dialog discard option.
  String get dialogDiscard;

  // Alert dialog disagree option.
  String get dialogDisagree;

  // Alert dialog agree option.
  String get dialogAgree;

  // Alert dialog title for setting a backup account.
  String get dialogSetBackup;

  // Alert dialog option for adding an account.
  String get dialogAddAccount;

  // Button text to display a dialog.
  String get dialogShow;

  // Title for full screen dialog demo.
  String get dialogFullscreenTitle;

  // Save button for full screen dialog demo.
  String get dialogFullscreenSave;

  // Description for full screen dialog demo.
  String get dialogFullscreenDescription;

  // Button text for a generic iOS-style button.
  String get cupertinoButton;

  // Button text for a iOS-style button with a filled background.
  String get cupertinoButtonWithBackground;

  // iOS-style alert cancel option.
  String get cupertinoAlertCancel;

  // iOS-style alert discard option.
  String get cupertinoAlertDiscard;

  // iOS-style alert title for location permission.
  String get cupertinoAlertLocationTitle;

  // iOS-style alert description for location permission.
  String get cupertinoAlertLocationDescription;

  // iOS-style alert allow option.
  String get cupertinoAlertAllow;

  // iOS-style alert don't allow option.
  String get cupertinoAlertDontAllow;

  // iOS-style alert title for selecting favorite dessert.
  String get cupertinoAlertFavoriteDessert;

  // iOS-style alert description for selecting favorite dessert.
  String get cupertinoAlertDessertDescription;

  // iOS-style alert cheesecake option.
  String get cupertinoAlertCheesecake;

  // iOS-style alert tiramisu option.
  String get cupertinoAlertTiramisu;

  // iOS-style alert apple pie option.
  String get cupertinoAlertApplePie;

  // iOS-style alert chocolate brownie option.
  String get cupertinoAlertChocolateBrownie;

  // Button text to show iOS-style alert.
  String get cupertinoShowAlert;

  // Tab title for the color red.
  String get colorsRed;

  // Tab title for the color pink.
  String get colorsPink;

  // Tab title for the color purple.
  String get colorsPurple;

  // Tab title for the color deep purple.
  String get colorsDeepPurple;

  // Tab title for the color indigo.
  String get colorsIndigo;

  // Tab title for the color blue.
  String get colorsBlue;

  // Tab title for the color light blue.
  String get colorsLightBlue;

  // Tab title for the color cyan.
  String get colorsCyan;

  // Tab title for the color teal.
  String get colorsTeal;

  // Tab title for the color green.
  String get colorsGreen;

  // Tab title for the color light green.
  String get colorsLightGreen;

  // Tab title for the color lime.
  String get colorsLime;

  // Tab title for the color yellow.
  String get colorsYellow;

  // Tab title for the color amber.
  String get colorsAmber;

  // Tab title for the color orange.
  String get colorsOrange;

  // Tab title for the color deep orange.
  String get colorsDeepOrange;

  // Tab title for the color brown.
  String get colorsBrown;

  // Tab title for the color grey.
  String get colorsGrey;

  // Tab title for the color blue grey.
  String get colorsBlueGrey;

  // Title for Chennai location.
  String get placeChennai;

  // Title for Tanjore location.
  String get placeTanjore;

  // Title for Chettinad location.
  String get placeChettinad;

  // Title for Pondicherry location.
  String get placePondicherry;

  // Title for Flower Market location.
  String get placeFlowerMarket;

  // Title for Bronze Works location.
  String get placeBronzeWorks;

  // Title for Market location.
  String get placeMarket;

  // Title for Thanjavur Temple location.
  String get placeThanjavurTemple;

  // Title for Salt Farm location.
  String get placeSaltFarm;

  // Title for image of people riding on scooters.
  String get placeScooters;

  // Title for an image of a silk maker.
  String get placeSilkMaker;

  // Title for an image of preparing lunch.
  String get placeLunchPrep;

  // Title for Beach location.
  String get placeBeach;

  // Title for an image of a fisherman.
  String get placeFisherman;

  // The title and name for the starter app.
  String get starterAppTitle;

  // The description for the starter app.
  String get starterAppDescription;

  // Generic placeholder for button.
  String get starterAppGenericButton;

  // Tooltip on add icon.
  String get starterAppTooltipAdd;

  // Tooltip on favorite icon.
  String get starterAppTooltipFavorite;

  // Tooltip on share icon.
  String get starterAppTooltipShare;

  // Tooltip on search icon.
  String get starterAppTooltipSearch;

  // Generic placeholder for title in app bar.
  String get starterAppGenericTitle;

  // Generic placeholder for subtitle in drawer.
  String get starterAppGenericSubtitle;

  // Generic placeholder for headline in drawer.
  String get starterAppGenericHeadline;

  // Generic placeholder for body text in drawer.
  String get starterAppGenericBody;

  // Generic placeholder drawer item.
  String starterAppDrawerItem(Object value);

  // Caption for a menu page.
  String get shrineMenuCaption;

  // A tab showing products from all categories.
  String get shrineCategoryNameAll;

  // A category of products consisting of accessories (clothing items).
  String get shrineCategoryNameAccessories;

  // A category of products consisting of clothing.
  String get shrineCategoryNameClothing;

  // A category of products consisting of items used at home.
  String get shrineCategoryNameHome;

  // Label for a logout button.
  String get shrineLogoutButtonCaption;

  // On the login screen, a label for a textfield for the user to input their username.
  String get shrineLoginUsernameLabel;

  // On the login screen, a label for a textfield for the user to input their password.
  String get shrineLoginPasswordLabel;

  // On the login screen, the caption for a button to cancel login.
  String get shrineCancelButtonCaption;

  // On the login screen, the caption for a button to proceed login.
  String get shrineNextButtonCaption;

  // Caption for a shopping cart page.
  String get shrineCartPageCaption;

  // A text showing the number of items for a specific product.
  String shrineProductQuantity(Object quantity);

  // A text showing the unit price of each product. Used as: 'Quantity: 3 x $129'. The currency will be handled by the formatter.
  String shrineProductPrice(Object price);

  // A text showing the total number of items in the cart.
  String shrineCartItemCount(int quantity);

  // Caption for a button used to clear the cart.
  String get shrineCartClearButtonCaption;

  // Label for a text showing total price of the items in the cart.
  String get shrineCartTotalCaption;

  // Label for a text showing the subtotal price of the items in the cart (excluding shipping and tax).
  String get shrineCartSubtotalCaption;

  // Label for a text showing the shipping cost for the items in the cart.
  String get shrineCartShippingCaption;

  // Label for a text showing the tax for the items in the cart.
  String get shrineCartTaxCaption;

  // Name of the product 'Vagabond sack'.
  String get shrineProductVagabondSack;

  // Name of the product 'Stella sunglasses'.
  String get shrineProductStellaSunglasses;

  // Name of the product 'Whitney belt'.
  String get shrineProductWhitneyBelt;

  // Name of the product 'Garden strand'.
  String get shrineProductGardenStrand;

  // Name of the product 'Strut earrings'.
  String get shrineProductStrutEarrings;

  // Name of the product 'Varsity socks'.
  String get shrineProductVarsitySocks;

  // Name of the product 'Weave keyring'.
  String get shrineProductWeaveKeyring;

  // Name of the product 'Gatsby hat'.
  String get shrineProductGatsbyHat;

  // Name of the product 'Shrug bag'.
  String get shrineProductShrugBag;

  // Name of the product 'Gilt desk trio'.
  String get shrineProductGiltDeskTrio;

  // Name of the product 'Copper wire rack'.
  String get shrineProductCopperWireRack;

  // Name of the product 'Soothe ceramic set'.
  String get shrineProductSootheCeramicSet;

  // Name of the product 'Hurrahs tea set'.
  String get shrineProductHurrahsTeaSet;

  // Name of the product 'Blue stone mug'.
  String get shrineProductBlueStoneMug;

  // Name of the product 'Rainwater tray'.
  String get shrineProductRainwaterTray;

  // Name of the product 'Chambray napkins'.
  String get shrineProductChambrayNapkins;

  // Name of the product 'Succulent planters'.
  String get shrineProductSucculentPlanters;

  // Name of the product 'Quartet table'.
  String get shrineProductQuartetTable;

  // Name of the product 'Kitchen quattro'.
  String get shrineProductKitchenQuattro;

  // Name of the product 'Clay sweater'.
  String get shrineProductClaySweater;

  // Name of the product 'Sea tunic'.
  String get shrineProductSeaTunic;

  // Name of the product 'Plaster tunic'.
  String get shrineProductPlasterTunic;

  // Name of the product 'White pinstripe shirt'.
  String get shrineProductWhitePinstripeShirt;

  // Name of the product 'Chambray shirt'.
  String get shrineProductChambrayShirt;

  // Name of the product 'Seabreeze sweater'.
  String get shrineProductSeabreezeSweater;

  // Name of the product 'Gentry jacket'.
  String get shrineProductGentryJacket;

  // Name of the product 'Navy trousers'.
  String get shrineProductNavyTrousers;

  // Name of the product 'Walter henley (white)'.
  String get shrineProductWalterHenleyWhite;

  // Name of the product 'Surf and perf shirt'.
  String get shrineProductSurfAndPerfShirt;

  // Name of the product 'Ginger scarf'.
  String get shrineProductGingerScarf;

  // Name of the product 'Ramona crossover'.
  String get shrineProductRamonaCrossover;

  // Name of the product 'Classic white collar'.
  String get shrineProductClassicWhiteCollar;

  // Name of the product 'Cerise scallop tee'.
  String get shrineProductCeriseScallopTee;

  // Name of the product 'Shoulder rolls tee'.
  String get shrineProductShoulderRollsTee;

  // Name of the product 'Grey slouch tank'.
  String get shrineProductGreySlouchTank;

  // Name of the product 'Sunshirt dress'.
  String get shrineProductSunshirtDress;

  // Name of the product 'Fine lines tee'.
  String get shrineProductFineLinesTee;

  // The tooltip text for a search button. Also used as a semantic label, used by screen readers, such as TalkBack and VoiceOver.
  String get shrineTooltipSearch;

  // The tooltip text for a settings button. Also used as a semantic label, used by screen readers, such as TalkBack and VoiceOver.
  String get shrineTooltipSettings;

  // The tooltip text for a menu button. Also used as a semantic label, used by screen readers, such as TalkBack and VoiceOver.
  String get shrineTooltipOpenMenu;

  // The tooltip text for a button to close a menu. Also used as a semantic label, used by screen readers, such as TalkBack and VoiceOver.
  String get shrineTooltipCloseMenu;

  // The tooltip text for a button to close the shopping cart page. Also used as a semantic label, used by screen readers, such as TalkBack and VoiceOver.
  String get shrineTooltipCloseCart;

  // The description of a shopping cart button containing some products. Used by screen readers, such as TalkBack and VoiceOver.
  String shrineScreenReaderCart(int quantity);

  // An announcement made by screen readers, such as TalkBack and VoiceOver to indicate the action of a button for adding a product to the cart.
  String get shrineScreenReaderProductAddToCart;

  // A tooltip for a button to remove a product. This will be read by screen readers, such as TalkBack and VoiceOver when a product is added to the shopping cart.
  String shrineScreenReaderRemoveProductButton(Object product);

  // The tooltip text for a button to remove an item (a product) in a shopping cart. Also used as a semantic label, used by screen readers, such as TalkBack and VoiceOver.
  String get shrineTooltipRemoveItem;

  // Form field label to enter the number of diners.
  String get craneFormDiners;

  // Form field label to select a date.
  String get craneFormDate;

  // Form field label to select a time.
  String get craneFormTime;

  // Form field label to select a location.
  String get craneFormLocation;

  // Form field label to select the number of travellers.
  String get craneFormTravelers;

  // Form field label to choose a travel origin.
  String get craneFormOrigin;

  // Form field label to choose a travel destination.
  String get craneFormDestination;

  // Form field label to select multiple dates.
  String get craneFormDates;

  // Generic text for an amount of hours, abbreviated to the shortest form. For example 1h. {hours} should remain untranslated.
  String craneHours(int hours);

  // Generic text for an amount of minutes, abbreviated to the shortest form. For example 15m. {minutes} should remain untranslated.
  String craneMinutes(int minutes);

  // A pattern to define the layout of a flight duration string. For example in English one might say 1h 15m. Translation should only rearrange the inputs. {hoursShortForm} would for example be replaced by 1h, already translated to the given locale. {minutesShortForm} would for example be replaced by 15m, already translated to the given locale.
  String craneFlightDuration(Object hoursShortForm, Object minutesShortForm);

  // Title for FLY tab.
  String get craneFly;

  // Title for SLEEP tab.
  String get craneSleep;

  // Title for EAT tab.
  String get craneEat;

  // Subhead for FLY tab.
  String get craneFlySubhead;

  // Subhead for SLEEP tab.
  String get craneSleepSubhead;

  // Subhead for EAT tab.
  String get craneEatSubhead;

  // Label indicating if a flight is nonstop or how many layovers it includes.
  String craneFlyStops(int numberOfStops);

  // Text indicating the number of available properties (temporary rentals). Always plural.
  String craneSleepProperties(int totalProperties);

  // Text indicating the number of restaurants. Always plural.
  String craneEatRestaurants(int totalRestaurants);

  // Label for city.
  String get craneFly0;

  // Label for city.
  String get craneFly1;

  // Label for city.
  String get craneFly2;

  // Label for city.
  String get craneFly3;

  // Label for city.
  String get craneFly4;

  // Label for city.
  String get craneFly5;

  // Label for city.
  String get craneFly6;

  // Label for city.
  String get craneFly7;

  // Label for city.
  String get craneFly8;

  // Label for city.
  String get craneFly9;

  // Label for city.
  String get craneFly10;

  // Label for city.
  String get craneFly11;

  // Label for city.
  String get craneFly12;

  // Label for city.
  String get craneFly13;

  // Label for city.
  String get craneSleep0;

  // Label for city.
  String get craneSleep1;

  // Label for city.
  String get craneSleep2;

  // Label for city.
  String get craneSleep3;

  // Label for city.
  String get craneSleep4;

  // Label for city.
  String get craneSleep5;

  // Label for city.
  String get craneSleep6;

  // Label for city.
  String get craneSleep7;

  // Label for city.
  String get craneSleep8;

  // Label for city.
  String get craneSleep9;

  // Label for city.
  String get craneSleep10;

  // Label for city.
  String get craneSleep11;

  // Label for city.
  String get craneEat0;

  // Label for city.
  String get craneEat1;

  // Label for city.
  String get craneEat2;

  // Label for city.
  String get craneEat3;

  // Label for city.
  String get craneEat4;

  // Label for city.
  String get craneEat5;

  // Label for city.
  String get craneEat6;

  // Label for city.
  String get craneEat7;

  // Label for city.
  String get craneEat8;

  // Label for city.
  String get craneEat9;

  // Label for city.
  String get craneEat10;

  // Semantic label for an image.
  String get craneFly0SemanticLabel;

  // Semantic label for an image.
  String get craneFly1SemanticLabel;

  // Semantic label for an image.
  String get craneFly2SemanticLabel;

  // Semantic label for an image.
  String get craneFly3SemanticLabel;

  // Semantic label for an image.
  String get craneFly4SemanticLabel;

  // Semantic label for an image.
  String get craneFly5SemanticLabel;

  // Semantic label for an image.
  String get craneFly6SemanticLabel;

  // Semantic label for an image.
  String get craneFly7SemanticLabel;

  // Semantic label for an image.
  String get craneFly8SemanticLabel;

  // Semantic label for an image.
  String get craneFly9SemanticLabel;

  // Semantic label for an image.
  String get craneFly10SemanticLabel;

  // Semantic label for an image.
  String get craneFly11SemanticLabel;

  // Semantic label for an image.
  String get craneFly12SemanticLabel;

  // Semantic label for an image.
  String get craneFly13SemanticLabel;

  // Semantic label for an image.
  String get craneSleep0SemanticLabel;

  // Semantic label for an image.
  String get craneSleep1SemanticLabel;

  // Semantic label for an image.
  String get craneSleep2SemanticLabel;

  // Semantic label for an image.
  String get craneSleep3SemanticLabel;

  // Semantic label for an image.
  String get craneSleep4SemanticLabel;

  // Semantic label for an image.
  String get craneSleep5SemanticLabel;

  // Semantic label for an image.
  String get craneSleep6SemanticLabel;

  // Semantic label for an image.
  String get craneSleep7SemanticLabel;

  // Semantic label for an image.
  String get craneSleep8SemanticLabel;

  // Semantic label for an image.
  String get craneSleep9SemanticLabel;

  // Semantic label for an image.
  String get craneSleep10SemanticLabel;

  // Semantic label for an image.
  String get craneSleep11SemanticLabel;

  // Semantic label for an image.
  String get craneEat0SemanticLabel;

  // Semantic label for an image.
  String get craneEat1SemanticLabel;

  // Semantic label for an image.
  String get craneEat2SemanticLabel;

  // Semantic label for an image.
  String get craneEat3SemanticLabel;

  // Semantic label for an image.
  String get craneEat4SemanticLabel;

  // Semantic label for an image.
  String get craneEat5SemanticLabel;

  // Semantic label for an image.
  String get craneEat6SemanticLabel;

  // Semantic label for an image.
  String get craneEat7SemanticLabel;

  // Semantic label for an image.
  String get craneEat8SemanticLabel;

  // Semantic label for an image.
  String get craneEat9SemanticLabel;

  // Semantic label for an image.
  String get craneEat10SemanticLabel;

  // Menu item for the front page of the news app.
  String get fortnightlyMenuFrontPage;

  // Menu item for the world news section of the news app.
  String get fortnightlyMenuWorld;

  // Menu item for the United States news section of the news app.
  String get fortnightlyMenuUS;

  // Menu item for the political news section of the news app.
  String get fortnightlyMenuPolitics;

  // Menu item for the business news section of the news app.
  String get fortnightlyMenuBusiness;

  // Menu item for the tech news section of the news app.
  String get fortnightlyMenuTech;

  // Menu item for the science news section of the news app.
  String get fortnightlyMenuScience;

  // Menu item for the sports news section of the news app.
  String get fortnightlyMenuSports;

  // Menu item for the travel news section of the news app.
  String get fortnightlyMenuTravel;

  // Menu item for the culture news section of the news app.
  String get fortnightlyMenuCulture;

  // Hashtag for the tech design trending topic of the news app.
  String get fortnightlyTrendingTechDesign;

  // Hashtag for the reform trending topic of the news app.
  String get fortnightlyTrendingReform;

  // Hashtag for the healthcare revolution trending topic of the news app.
  String get fortnightlyTrendingHealthcareRevolution;

  // Hashtag for the green army trending topic of the news app.
  String get fortnightlyTrendingGreenArmy;

  // Hashtag for the stocks trending topic of the news app.
  String get fortnightlyTrendingStocks;

  // Title for news section regarding the latest updates.
  String get fortnightlyLatestUpdates;

  // Headline for a news article about healthcare.
  String get fortnightlyHeadlineHealthcare;

  // Headline for a news article about war.
  String get fortnightlyHeadlineWar;

  // Headline for a news article about gasoline.
  String get fortnightlyHeadlineGasoline;

  // Headline for a news article about the green army.
  String get fortnightlyHeadlineArmy;

  // Headline for a news article about stocks.
  String get fortnightlyHeadlineStocks;

  // Headline for a news article about fabric.
  String get fortnightlyHeadlineFabrics;

  // Headline for a news article about feminists and partisanship.
  String get fortnightlyHeadlineFeminists;

  // Headline for a news article about bees.
  String get fortnightlyHeadlineBees;
}

class _GalleryLocalizationsDelegate
    extends LocalizationsDelegate<GalleryLocalizations> {
  const _GalleryLocalizationsDelegate();

  @override
  Future<GalleryLocalizations> load(Locale locale) {
    return SynchronousFuture<GalleryLocalizations>(
        _lookupGalleryLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'en',
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_GalleryLocalizationsDelegate old) => false;
}

/// The translations for English (`en`).
class GalleryLocalizationsEn extends GalleryLocalizations {
  GalleryLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get aboutFlutterSamplesRepo => 'Flutter samples Github repo';

  @override
  String aboutDialogDescription(Object value) {
    return 'To see the source code for this app, please visit the ${value}.';
  }

  @override
  String get signIn => 'SIGN IN';

  @override
  String get bannerDemoText =>
      'Your password was updated on your other device. Please sign in again.';

  @override
  String get bannerDemoResetText => 'Reset the banner';

  @override
  String get bannerDemoMultipleText => 'Multiple actions';

  @override
  String get bannerDemoLeadingText => 'Leading Icon';

  @override
  String get dismiss => 'DISMISS';

  @override
  String get backToGallery => 'Back to Gallery';

  @override
  String get cardsDemoTappable => 'Tappable';

  @override
  String get cardsDemoSelectable => 'Selectable (long press)';

  @override
  String get cardsDemoExplore => 'Explore';

  @override
  String cardsDemoExploreSemantics(Object destinationName) {
    return 'Explore ${destinationName}';
  }

  @override
  String cardsDemoShareSemantics(Object destinationName) {
    return 'Share ${destinationName}';
  }

  @override
  String get cardsDemoTravelDestinationTitle1 =>
      'Top 10 Cities to Visit in Tamil Nadu';

  @override
  String get cardsDemoTravelDestinationDescription1 => 'Number 10';

  @override
  String get cardsDemoTravelDestinationCity1 => 'Thanjavur';

  @override
  String get cardsDemoTravelDestinationLocation1 => 'Thanjavur, Tamil Nadu';

  @override
  String get cardsDemoTravelDestinationTitle2 => 'Artisans of Southern India';

  @override
  String get cardsDemoTravelDestinationDescription2 => 'Silk Spinners';

  @override
  String get cardsDemoTravelDestinationCity2 => 'Chettinad';

  @override
  String get cardsDemoTravelDestinationLocation2 => 'Sivaganga, Tamil Nadu';

  @override
  String get cardsDemoTravelDestinationTitle3 => 'Brihadisvara Temple';

  @override
  String get cardsDemoTravelDestinationDescription3 => 'Temples';

  @override
  String get homeHeaderGallery => 'Gallery';

  @override
  String get homeHeaderCategories => 'Categories';

  @override
  String get shrineDescription => 'A fashionable retail app';

  @override
  String get fortnightlyDescription => 'A content-focused news app';

  @override
  String get rallyDescription => 'A personal finance app';

  @override
  String get rallyAccountDataChecking => 'Checking';

  @override
  String get rallyAccountDataHomeSavings => 'Home Savings';

  @override
  String get rallyAccountDataCarSavings => 'Car Savings';

  @override
  String get rallyAccountDataVacation => 'Vacation';

  @override
  String get rallyAccountDetailDataAnnualPercentageYield =>
      'Annual Percentage Yield';

  @override
  String get rallyAccountDetailDataInterestRate => 'Interest Rate';

  @override
  String get rallyAccountDetailDataInterestYtd => 'Interest YTD';

  @override
  String get rallyAccountDetailDataInterestPaidLastYear =>
      'Interest Paid Last Year';

  @override
  String get rallyAccountDetailDataNextStatement => 'Next Statement';

  @override
  String get rallyAccountDetailDataAccountOwner => 'Account Owner';

  @override
  String get rallyBillDetailTotalAmount => 'Total Amount';

  @override
  String get rallyBillDetailAmountPaid => 'Amount Paid';

  @override
  String get rallyBillDetailAmountDue => 'Amount Due';

  @override
  String get rallyBudgetCategoryCoffeeShops => 'Coffee Shops';

  @override
  String get rallyBudgetCategoryGroceries => 'Groceries';

  @override
  String get rallyBudgetCategoryRestaurants => 'Restaurants';

  @override
  String get rallyBudgetCategoryClothing => 'Clothing';

  @override
  String get rallyBudgetDetailTotalCap => 'Total Cap';

  @override
  String get rallyBudgetDetailAmountUsed => 'Amount Used';

  @override
  String get rallyBudgetDetailAmountLeft => 'Amount Left';

  @override
  String get rallySettingsManageAccounts => 'Manage Accounts';

  @override
  String get rallySettingsTaxDocuments => 'Tax Documents';

  @override
  String get rallySettingsPasscodeAndTouchId => 'Passcode and Touch ID';

  @override
  String get rallySettingsNotifications => 'Notifications';

  @override
  String get rallySettingsPersonalInformation => 'Personal Information';

  @override
  String get rallySettingsPaperlessSettings => 'Paperless Settings';

  @override
  String get rallySettingsFindAtms => 'Find ATMs';

  @override
  String get rallySettingsHelp => 'Help';

  @override
  String get rallySettingsSignOut => 'Sign out';

  @override
  String get rallyAccountTotal => 'Total';

  @override
  String get rallyBillsDue => 'Due';

  @override
  String get rallyBudgetLeft => 'Left';

  @override
  String get rallyAccounts => 'Accounts';

  @override
  String get rallyBills => 'Bills';

  @override
  String get rallyBudgets => 'Budgets';

  @override
  String get rallyAlerts => 'Alerts';

  @override
  String get rallySeeAll => 'SEE ALL';

  @override
  String get rallyFinanceLeft => ' LEFT';

  @override
  String get rallyTitleOverview => 'OVERVIEW';

  @override
  String get rallyTitleAccounts => 'ACCOUNTS';

  @override
  String get rallyTitleBills => 'BILLS';

  @override
  String get rallyTitleBudgets => 'BUDGETS';

  @override
  String get rallyTitleSettings => 'SETTINGS';

  @override
  String get rallyLoginLoginToRally => 'Login to Rally';

  @override
  String get rallyLoginNoAccount => 'Don\'t have an account?';

  @override
  String get rallyLoginSignUp => 'SIGN UP';

  @override
  String get rallyLoginUsername => 'Username';

  @override
  String get rallyLoginPassword => 'Password';

  @override
  String get rallyLoginLabelLogin => 'Login';

  @override
  String get rallyLoginRememberMe => 'Remember Me';

  @override
  String get rallyLoginButtonLogin => 'LOGIN';

  @override
  String rallyAlertsMessageHeadsUpShopping(Object percent) {
    return 'Heads up, you’ve used up ${percent} of your Shopping budget for this month.';
  }

  @override
  String rallyAlertsMessageSpentOnRestaurants(Object amount) {
    return 'You’ve spent ${amount} on Restaurants this week.';
  }

  @override
  String rallyAlertsMessageATMFees(Object amount) {
    return 'You’ve spent ${amount} in ATM fees this month';
  }

  @override
  String rallyAlertsMessageCheckingAccount(Object percent) {
    return 'Good work! Your checking account is ${percent} higher than last month.';
  }

  @override
  String rallyAlertsMessageUnassignedTransactions(int count) {
    return intl.Intl.pluralLogic(
      count,
      locale: _localeName,
      one:
          'Increase your potential tax deduction! Assign categories to 1 unassigned transaction.',
      other:
          'Increase your potential tax deduction! Assign categories to ${count} unassigned transactions.',
    );
  }

  @override
  String get rallySeeAllAccounts => 'See all accounts';

  @override
  String get rallySeeAllBills => 'See all bills';

  @override
  String get rallySeeAllBudgets => 'See all budgets';

  @override
  String rallyAccountAmount(
      Object accountName, Object accountNumber, Object amount) {
    return '${accountName} account ${accountNumber} with ${amount}.';
  }

  @override
  String rallyBillAmount(Object billName, Object date, Object amount) {
    return '${billName} bill due ${date} for ${amount}.';
  }

  @override
  String rallyBudgetAmount(Object budgetName, Object amountUsed,
      Object amountTotal, Object amountLeft) {
    return '${budgetName} budget with ${amountUsed} used of ${amountTotal}, ${amountLeft} left';
  }

  @override
  String get craneDescription => 'A personalized travel app';

  @override
  String get homeCategoryReference => 'STYLES & OTHER';

  @override
  String get demoInvalidURL => 'Couldn\'t display URL:';

  @override
  String get demoOptionsTooltip => 'Options';

  @override
  String get demoInfoTooltip => 'Info';

  @override
  String get demoCodeTooltip => 'Demo Code';

  @override
  String get demoDocumentationTooltip => 'API Documentation';

  @override
  String get demoFullscreenTooltip => 'Full Screen';

  @override
  String get demoCodeViewerCopyAll => 'COPY ALL';

  @override
  String get demoCodeViewerCopiedToClipboardMessage => 'Copied to clipboard.';

  @override
  String demoCodeViewerFailedToCopyToClipboardMessage(Object error) {
    return 'Failed to copy to clipboard: ${error}';
  }

  @override
  String get demoOptionsFeatureTitle => 'View options';

  @override
  String get demoOptionsFeatureDescription =>
      'Tap here to view available options for this demo.';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsButtonLabel => 'Settings';

  @override
  String get settingsButtonCloseLabel => 'Close settings';

  @override
  String get settingsSystemDefault => 'System';

  @override
  String get settingsTextScaling => 'Text scaling';

  @override
  String get settingsTextScalingSmall => 'Small';

  @override
  String get settingsTextScalingNormal => 'Normal';

  @override
  String get settingsTextScalingLarge => 'Large';

  @override
  String get settingsTextScalingHuge => 'Huge';

  @override
  String get settingsTextDirection => 'Text direction';

  @override
  String get settingsTextDirectionLocaleBased => 'Based on locale';

  @override
  String get settingsTextDirectionLTR => 'LTR';

  @override
  String get settingsTextDirectionRTL => 'RTL';

  @override
  String get settingsLocale => 'Locale';

  @override
  String get settingsPlatformMechanics => 'Platform mechanics';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsDarkTheme => 'Dark';

  @override
  String get settingsLightTheme => 'Light';

  @override
  String get settingsSlowMotion => 'Slow motion';

  @override
  String get settingsAbout => 'About Flutter Gallery';

  @override
  String get settingsFeedback => 'Send feedback';

  @override
  String get settingsAttribution => 'Designed by TOASTER in London';

  @override
  String get demoBottomAppBarTitle => 'Bottom app bar';

  @override
  String get demoBottomAppBarSubtitle =>
      'Displays navigation and actions at the bottom';

  @override
  String get demoBottomAppBarDescription =>
      'Bottom app bars provide access to a bottom navigation drawer and up to four actions, including the floating action button.';

  @override
  String get bottomAppBarNotch => 'Notch';

  @override
  String get bottomAppBarPosition => 'Floating Action Button Position';

  @override
  String get bottomAppBarPositionDockedEnd => 'Docked - End';

  @override
  String get bottomAppBarPositionDockedCenter => 'Docked - Center';

  @override
  String get bottomAppBarPositionFloatingEnd => 'Floating - End';

  @override
  String get bottomAppBarPositionFloatingCenter => 'Floating - Center';

  @override
  String get demoBannerTitle => 'Banner';

  @override
  String get demoBannerSubtitle => 'Displaying a banner within a list';

  @override
  String get demoBannerDescription =>
      'A banner displays an important, succinct message, and provides actions for users to address (or dismiss the banner). A user action is required for it to be dismissed.';

  @override
  String get demoBottomNavigationTitle => 'Bottom navigation';

  @override
  String get demoBottomNavigationSubtitle =>
      'Bottom navigation with cross-fading views';

  @override
  String get demoBottomNavigationPersistentLabels => 'Persistent labels';

  @override
  String get demoBottomNavigationSelectedLabel => 'Selected label';

  @override
  String get demoBottomNavigationDescription =>
      'Bottom navigation bars display three to five destinations at the bottom of a screen. Each destination is represented by an icon and an optional text label. When a bottom navigation icon is tapped, the user is taken to the top-level navigation destination associated with that icon.';

  @override
  String get demoButtonTitle => 'Buttons';

  @override
  String get demoButtonSubtitle => 'Flat, raised, outline, and more';

  @override
  String get demoFlatButtonTitle => 'Flat Button';

  @override
  String get demoFlatButtonDescription =>
      'A flat button displays an ink splash on press but does not lift. Use flat buttons on toolbars, in dialogs and inline with padding';

  @override
  String get demoRaisedButtonTitle => 'Raised Button';

  @override
  String get demoRaisedButtonDescription =>
      'Raised buttons add dimension to mostly flat layouts. They emphasize functions on busy or wide spaces.';

  @override
  String get demoOutlineButtonTitle => 'Outline Button';

  @override
  String get demoOutlineButtonDescription =>
      'Outline buttons become opaque and elevate when pressed. They are often paired with raised buttons to indicate an alternative, secondary action.';

  @override
  String get demoToggleButtonTitle => 'Toggle Buttons';

  @override
  String get demoToggleButtonDescription =>
      'Toggle buttons can be used to group related options. To emphasize groups of related toggle buttons, a group should share a common container';

  @override
  String get demoFloatingButtonTitle => 'Floating Action Button';

  @override
  String get demoFloatingButtonDescription =>
      'A floating action button is a circular icon button that hovers over content to promote a primary action in the application.';

  @override
  String get demoCardTitle => 'Cards';

  @override
  String get demoCardSubtitle => 'Baseline cards with rounded corners';

  @override
  String get demoChipTitle => 'Chips';

  @override
  String get demoCardDescription =>
      'A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc.';

  @override
  String get demoChipSubtitle =>
      'Compact elements that represent an input, attribute, or action';

  @override
  String get demoActionChipTitle => 'Action Chip';

  @override
  String get demoActionChipDescription =>
      'Action chips are a set of options which trigger an action related to primary content. Action chips should appear dynamically and contextually in a UI.';

  @override
  String get demoChoiceChipTitle => 'Choice Chip';

  @override
  String get demoChoiceChipDescription =>
      'Choice chips represent a single choice from a set. Choice chips contain related descriptive text or categories.';

  @override
  String get demoFilterChipTitle => 'Filter Chip';

  @override
  String get demoFilterChipDescription =>
      'Filter chips use tags or descriptive words as a way to filter content.';

  @override
  String get demoInputChipTitle => 'Input Chip';

  @override
  String get demoInputChipDescription =>
      'Input chips represent a complex piece of information, such as an entity (person, place, or thing) or conversational text, in a compact form.';

  @override
  String get demoDataTableTitle => 'Data Tables';

  @override
  String get demoDataTableSubtitle => 'Rows and columns of information';

  @override
  String get demoDataTableDescription =>
      'Data tables display information in a grid-like format of rows and columns. They organize information in a way that’s easy to scan, so that users can look for patterns and insights.';

  @override
  String get dataTableHeader => 'Nutrition';

  @override
  String get dataTableColumnDessert => 'Dessert (1 serving)';

  @override
  String get dataTableColumnCalories => 'Calories';

  @override
  String get dataTableColumnFat => 'Fat (g)';

  @override
  String get dataTableColumnCarbs => 'Carbs (g)';

  @override
  String get dataTableColumnProtein => 'Protein (g)';

  @override
  String get dataTableColumnSodium => 'Sodium (mg)';

  @override
  String get dataTableColumnCalcium => 'Calcium (%)';

  @override
  String get dataTableColumnIron => 'Iron (%)';

  @override
  String get dataTableRowFrozenYogurt => 'Frozen yogurt';

  @override
  String get dataTableRowIceCreamSandwich => 'Ice cream sandwich';

  @override
  String get dataTableRowEclair => 'Eclair';

  @override
  String get dataTableRowCupcake => 'Cupcake';

  @override
  String get dataTableRowGingerbread => 'Gingerbread';

  @override
  String get dataTableRowJellyBean => 'Jelly bean';

  @override
  String get dataTableRowLollipop => 'Lollipop';

  @override
  String get dataTableRowHoneycomb => 'Honeycomb';

  @override
  String get dataTableRowDonut => 'Donut';

  @override
  String get dataTableRowApplePie => 'Apple pie';

  @override
  String dataTableRowWithSugar(Object value) {
    return '${value} with sugar';
  }

  @override
  String dataTableRowWithHoney(Object value) {
    return '${value} with honey';
  }

  @override
  String get demoDialogTitle => 'Dialogs';

  @override
  String get demoDialogSubtitle => 'Simple, alert, and fullscreen';

  @override
  String get demoAlertDialogTitle => 'Alert';

  @override
  String get demoAlertDialogDescription =>
      'An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions.';

  @override
  String get demoAlertTitleDialogTitle => 'Alert With Title';

  @override
  String get demoSimpleDialogTitle => 'Simple';

  @override
  String get demoSimpleDialogDescription =>
      'A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices.';

  @override
  String get demoGridListsTitle => 'Grid Lists';

  @override
  String get demoGridListsSubtitle => 'Row and column layout';

  @override
  String get demoGridListsDescription =>
      'Grid Lists are best suited for presenting homogeneous data, typically images. Each item in a grid list is called a tile.';

  @override
  String get demoGridListsImageOnlyTitle => 'Image only';

  @override
  String get demoGridListsHeaderTitle => 'With header';

  @override
  String get demoGridListsFooterTitle => 'With footer';

  @override
  String get demoSlidersTitle => 'Sliders';

  @override
  String get demoSlidersSubtitle => 'Widgets for selecting a value by swiping';

  @override
  String get demoSlidersDescription =>
      'Sliders reflect a range of values along a bar, from which users may select a single value. They are ideal for adjusting settings such as volume, brightness, or applying image filters.';

  @override
  String get demoRangeSlidersTitle => 'Range Sliders';

  @override
  String get demoRangeSlidersDescription =>
      'Sliders reflect a range of values along a bar. They can have icons on both ends of the bar that reflect a range of values. They are ideal for adjusting settings such as volume, brightness, or applying image filters.';

  @override
  String get demoCustomSlidersTitle => 'Custom Sliders';

  @override
  String get demoCustomSlidersDescription =>
      'Sliders reflect a range of values along a bar, from which users may select a single value or range of values. The sliders can be themed and customized.';

  @override
  String get demoSlidersContinuousWithEditableNumericalValue =>
      'Continuous with Editable Numerical Value';

  @override
  String get demoSlidersDiscrete => 'Discrete';

  @override
  String get demoSlidersDiscreteSliderWithCustomTheme =>
      'Discrete Slider with Custom Theme';

  @override
  String get demoSlidersContinuousRangeSliderWithCustomTheme =>
      'Continuous Range Slider with Custom Theme';

  @override
  String get demoSlidersContinuous => 'Continuous';

  @override
  String get demoSlidersEditableNumericalValue => 'Editable numerical value';

  @override
  String get demoMenuTitle => 'Menu';

  @override
  String get demoContextMenuTitle => 'Context menu';

  @override
  String get demoSectionedMenuTitle => 'Sectioned menu';

  @override
  String get demoSimpleMenuTitle => 'Simple menu';

  @override
  String get demoChecklistMenuTitle => 'Checklist menu';

  @override
  String get demoMenuSubtitle => 'Menu buttons and simple menus';

  @override
  String get demoMenuDescription =>
      'A menu displays a list of choices on a temporary surface. They appear when users interact with a button, action, or other control.';

  @override
  String get demoMenuItemValueOne => 'Menu item one';

  @override
  String get demoMenuItemValueTwo => 'Menu item two';

  @override
  String get demoMenuItemValueThree => 'Menu item three';

  @override
  String get demoMenuOne => 'One';

  @override
  String get demoMenuTwo => 'Two';

  @override
  String get demoMenuThree => 'Three';

  @override
  String get demoMenuFour => 'Four';

  @override
  String get demoMenuAnItemWithAContextMenuButton =>
      'An item with a context menu';

  @override
  String get demoMenuContextMenuItemOne => 'Context menu item one';

  @override
  String get demoMenuADisabledMenuItem => 'Disabled menu item';

  @override
  String get demoMenuContextMenuItemThree => 'Context menu item three';

  @override
  String get demoMenuAnItemWithASectionedMenu =>
      'An item with a sectioned menu';

  @override
  String get demoMenuPreview => 'Preview';

  @override
  String get demoMenuShare => 'Share';

  @override
  String get demoMenuGetLink => 'Get link';

  @override
  String get demoMenuRemove => 'Remove';

  @override
  String demoMenuSelected(Object value) {
    return 'Selected: ${value}';
  }

  @override
  String demoMenuChecked(Object value) {
    return 'Checked: ${value}';
  }

  @override
  String get demoMenuAnItemWithASimpleMenu => 'An item with a simple menu';

  @override
  String get demoMenuAnItemWithAChecklistMenu =>
      'An item with a checklist menu';

  @override
  String get demoFullscreenDialogTitle => 'Fullscreen';

  @override
  String get demoFullscreenDialogDescription =>
      'The fullscreenDialog property specifies whether the incoming page is a fullscreen modal dialog';

  @override
  String get demoCupertinoActivityIndicatorTitle => 'Activity indicator';

  @override
  String get demoCupertinoActivityIndicatorSubtitle =>
      'iOS-style activity indicators';

  @override
  String get demoCupertinoActivityIndicatorDescription =>
      'An iOS-style activity indicator that spins clockwise.';

  @override
  String get demoCupertinoButtonsTitle => 'Buttons';

  @override
  String get demoCupertinoButtonsSubtitle => 'iOS-style buttons';

  @override
  String get demoCupertinoButtonsDescription =>
      'An iOS-style button. It takes in text and/or an icon that fades out and in on touch. May optionally have a background.';

  @override
  String get demoCupertinoAlertsTitle => 'Alerts';

  @override
  String get demoCupertinoAlertsSubtitle => 'iOS-style alert dialogs';

  @override
  String get demoCupertinoAlertTitle => 'Alert';

  @override
  String get demoCupertinoAlertDescription =>
      'An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title, optional content, and an optional list of actions. The title is displayed above the content and the actions are displayed below the content.';

  @override
  String get demoCupertinoAlertWithTitleTitle => 'Alert With Title';

  @override
  String get demoCupertinoAlertButtonsTitle => 'Alert With Buttons';

  @override
  String get demoCupertinoAlertButtonsOnlyTitle => 'Alert Buttons Only';

  @override
  String get demoCupertinoActionSheetTitle => 'Action Sheet';

  @override
  String get demoCupertinoActionSheetDescription =>
      'An action sheet is a specific style of alert that presents the user with a set of two or more choices related to the current context. An action sheet can have a title, an additional message, and a list of actions.';

  @override
  String get demoCupertinoNavigationBarTitle => 'Navigation bar';

  @override
  String get demoCupertinoNavigationBarSubtitle => 'iOS-style navigation bar';

  @override
  String get demoCupertinoNavigationBarDescription =>
      'An iOS-styled navigation bar. The navigation bar is a toolbar that minimally consists of a page title, in the middle of the toolbar.';

  @override
  String get demoCupertinoPickerTitle => 'Pickers';

  @override
  String get demoCupertinoPickerSubtitle => 'iOS-style date and time pickers';

  @override
  String get demoCupertinoPickerDescription =>
      'An iOS-style picker widget that can be used to select dates, times, or both date and time.';

  @override
  String get demoCupertinoPickerTimer => 'Timer';

  @override
  String get demoCupertinoPickerDate => 'Date';

  @override
  String get demoCupertinoPickerTime => 'Time';

  @override
  String get demoCupertinoPickerDateTime => 'Date and Time';

  @override
  String get demoCupertinoPullToRefreshTitle => 'Pull to refresh';

  @override
  String get demoCupertinoPullToRefreshSubtitle =>
      'iOS-style pull to refresh control';

  @override
  String get demoCupertinoPullToRefreshDescription =>
      'A widget implementing the iOS-style pull to refresh content control.';

  @override
  String get demoCupertinoSegmentedControlTitle => 'Segmented control';

  @override
  String get demoCupertinoSegmentedControlSubtitle =>
      'iOS-style segmented control';

  @override
  String get demoCupertinoSegmentedControlDescription =>
      'Used to select between a number of mutually exclusive options. When one option in the segmented control is selected, the other options in the segmented control cease to be selected.';

  @override
  String get demoCupertinoSliderTitle => 'Slider';

  @override
  String get demoCupertinoSliderSubtitle => 'iOS-style slider';

  @override
  String get demoCupertinoSliderDescription =>
      'A slider can be used to select from either a continuous or a discrete set of values.';

  @override
  String demoCupertinoSliderContinuous(Object value) {
    return 'Continuous: ${value}';
  }

  @override
  String demoCupertinoSliderDiscrete(Object value) {
    return 'Discrete: ${value}';
  }

  @override
  String get demoCupertinoSwitchSubtitle => 'iOS-style switch';

  @override
  String get demoCupertinoSwitchDescription =>
      'A switch is used to toggle the on/off state of a single setting.';

  @override
  String get demoCupertinoTabBarTitle => 'Tab bar';

  @override
  String get demoCupertinoTabBarSubtitle => 'iOS-style bottom tab bar';

  @override
  String get demoCupertinoTabBarDescription =>
      'An iOS-style bottom navigation tab bar. Displays multiple tabs with one tab being active, the first tab by default.';

  @override
  String get cupertinoTabBarHomeTab => 'Home';

  @override
  String get cupertinoTabBarChatTab => 'Chat';

  @override
  String get cupertinoTabBarProfileTab => 'Profile';

  @override
  String get demoCupertinoTextFieldTitle => 'Text fields';

  @override
  String get demoCupertinoTextFieldSubtitle => 'iOS-style text fields';

  @override
  String get demoCupertinoTextFieldDescription =>
      'A text field lets the user enter text, either with a hardware keyboard or with an onscreen keyboard.';

  @override
  String get demoCupertinoTextFieldPIN => 'PIN';

  @override
  String get demoColorsTitle => 'Colors';

  @override
  String get demoColorsSubtitle => 'All of the predefined colors';

  @override
  String get demoColorsDescription =>
      'Color and color swatch constants which represent Material Design\'s color palette.';

  @override
  String get demoTypographyTitle => 'Typography';

  @override
  String get demoTypographySubtitle => 'All of the predefined text styles';

  @override
  String get demoTypographyDescription =>
      'Definitions for the various typographical styles found in Material Design.';

  @override
  String get demo2dTransformationsTitle => '2D transformations';

  @override
  String get demo2dTransformationsSubtitle => 'Pan, zoom, rotate';

  @override
  String get demo2dTransformationsDescription =>
      'Tap to edit tiles, and use gestures to move around the scene. Drag to pan, pinch to zoom, rotate with two fingers. Press the reset button to return to the starting orientation.';

  @override
  String get demo2dTransformationsResetTooltip => 'Reset transformations';

  @override
  String get demo2dTransformationsEditTooltip => 'Edit tile';

  @override
  String get buttonText => 'BUTTON';

  @override
  String get demoBottomSheetTitle => 'Bottom sheet';

  @override
  String get demoBottomSheetSubtitle => 'Persistent and modal bottom sheets';

  @override
  String get demoBottomSheetPersistentTitle => 'Persistent bottom sheet';

  @override
  String get demoBottomSheetPersistentDescription =>
      'A persistent bottom sheet shows information that supplements the primary content of the app. A persistent bottom sheet remains visible even when the user interacts with other parts of the app.';

  @override
  String get demoBottomSheetModalTitle => 'Modal bottom sheet';

  @override
  String get demoBottomSheetModalDescription =>
      'A modal bottom sheet is an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app.';

  @override
  String get demoBottomSheetAddLabel => 'Add';

  @override
  String get demoBottomSheetButtonText => 'SHOW BOTTOM SHEET';

  @override
  String get demoBottomSheetHeader => 'Header';

  @override
  String demoBottomSheetItem(Object value) {
    return 'Item ${value}';
  }

  @override
  String get demoListsTitle => 'Lists';

  @override
  String get demoListsSubtitle => 'Scrolling list layouts';

  @override
  String get demoListsDescription =>
      'A single fixed-height row that typically contains some text as well as a leading or trailing icon.';

  @override
  String get demoOneLineListsTitle => 'One Line';

  @override
  String get demoTwoLineListsTitle => 'Two Lines';

  @override
  String get demoListsSecondary => 'Secondary text';

  @override
  String get demoProgressIndicatorTitle => 'Progress indicators';

  @override
  String get demoProgressIndicatorSubtitle => 'Linear, circular, indeterminate';

  @override
  String get demoCircularProgressIndicatorTitle =>
      'Circular Progress Indicator';

  @override
  String get demoCircularProgressIndicatorDescription =>
      'A Material Design circular progress indicator, which spins to indicate that the application is busy.';

  @override
  String get demoLinearProgressIndicatorTitle => 'Linear Progress Indicator';

  @override
  String get demoLinearProgressIndicatorDescription =>
      'A Material Design linear progress indicator, also known as a progress bar.';

  @override
  String get demoPickersTitle => 'Pickers';

  @override
  String get demoPickersSubtitle => 'Date and time selection';

  @override
  String get demoDatePickerTitle => 'Date Picker';

  @override
  String get demoDatePickerDescription =>
      'Shows a dialog containing a Material Design date picker.';

  @override
  String get demoTimePickerTitle => 'Time Picker';

  @override
  String get demoTimePickerDescription =>
      'Shows a dialog containing a Material Design time picker.';

  @override
  String get demoPickersShowPicker => 'SHOW PICKER';

  @override
  String get demoTabsTitle => 'Tabs';

  @override
  String get demoTabsScrollingTitle => 'Scrolling';

  @override
  String get demoTabsNonScrollingTitle => 'Non-scrolling';

  @override
  String get demoTabsSubtitle => 'Tabs with independently scrollable views';

  @override
  String get demoTabsDescription =>
      'Tabs organize content across different screens, data sets, and other interactions.';

  @override
  String get demoSnackbarsTitle => 'Snackbars';

  @override
  String get demoSnackbarsSubtitle =>
      'Snackbars show messages at the bottom of the screen';

  @override
  String get demoSnackbarsDescription =>
      'Snackbars inform users of a process that an app has performed or will perform. They appear temporarily, towards the bottom of the screen. They shouldn’t interrupt the user experience, and they don’t require user input to disappear.';

  @override
  String get demoSnackbarsButtonLabel => 'SHOW A SNACKBAR';

  @override
  String get demoSnackbarsText => 'This is a snackbar.';

  @override
  String get demoSnackbarsActionButtonLabel => 'ACTION';

  @override
  String get demoSnackbarsAction => 'You pressed the snackbar action.';

  @override
  String get demoSelectionControlsTitle => 'Selection controls';

  @override
  String get demoSelectionControlsSubtitle =>
      'Checkboxes, radio buttons, and switches';

  @override
  String get demoSelectionControlsCheckboxTitle => 'Checkbox';

  @override
  String get demoSelectionControlsCheckboxDescription =>
      'Checkboxes allow the user to select multiple options from a set. A normal checkbox\'s value is true or false and a tristate checkbox\'s value can also be null.';

  @override
  String get demoSelectionControlsRadioTitle => 'Radio';

  @override
  String get demoSelectionControlsRadioDescription =>
      'Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs to see all available options side-by-side.';

  @override
  String get demoSelectionControlsSwitchTitle => 'Switch';

  @override
  String get demoSelectionControlsSwitchDescription =>
      'On/off switches toggle the state of a single settings option. The option that the switch controls, as well as the state it’s in, should be made clear from the corresponding inline label.';

  @override
  String get demoBottomTextFieldsTitle => 'Text fields';

  @override
  String get demoTextFieldTitle => 'Text fields';

  @override
  String get demoTextFieldSubtitle =>
      'Single line of editable text and numbers';

  @override
  String get demoTextFieldDescription =>
      'Text fields allow users to enter text into a UI. They typically appear in forms and dialogs.';

  @override
  String get demoTextFieldShowPasswordLabel => 'Show password';

  @override
  String get demoTextFieldHidePasswordLabel => 'Hide password';

  @override
  String get demoTextFieldFormErrors =>
      'Please fix the errors in red before submitting.';

  @override
  String get demoTextFieldNameRequired => 'Name is required.';

  @override
  String get demoTextFieldOnlyAlphabeticalChars =>
      'Please enter only alphabetical characters.';

  @override
  String get demoTextFieldEnterUSPhoneNumber =>
      '(###) ###-#### - Enter a US phone number.';

  @override
  String get demoTextFieldEnterPassword => 'Please enter a password.';

  @override
  String get demoTextFieldPasswordsDoNotMatch => 'The passwords don\'t match';

  @override
  String get demoTextFieldWhatDoPeopleCallYou => 'What do people call you?';

  @override
  String get demoTextFieldNameField => 'Name*';

  @override
  String get demoTextFieldWhereCanWeReachYou => 'Where can we reach you?';

  @override
  String get demoTextFieldPhoneNumber => 'Phone number*';

  @override
  String get demoTextFieldYourEmailAddress => 'Your email address';

  @override
  String get demoTextFieldEmail => 'Email';

  @override
  String get demoTextFieldTellUsAboutYourself =>
      'Tell us about yourself (e.g., write down what you do or what hobbies you have)';

  @override
  String get demoTextFieldKeepItShort => 'Keep it short, this is just a demo.';

  @override
  String get demoTextFieldLifeStory => 'Life story';

  @override
  String get demoTextFieldSalary => 'Salary';

  @override
  String get demoTextFieldUSD => 'USD';

  @override
  String get demoTextFieldNoMoreThan => 'No more than 8 characters.';

  @override
  String get demoTextFieldPassword => 'Password*';

  @override
  String get demoTextFieldRetypePassword => 'Re-type password*';

  @override
  String get demoTextFieldSubmit => 'SUBMIT';

  @override
  String demoTextFieldNameHasPhoneNumber(Object name, Object phoneNumber) {
    return '${name} phone number is ${phoneNumber}';
  }

  @override
  String get demoTextFieldRequiredField => '* indicates required field';

  @override
  String get demoTooltipTitle => 'Tooltips';

  @override
  String get demoTooltipSubtitle =>
      'Short message displayed on long press or hover';

  @override
  String get demoTooltipDescription =>
      'Tooltips provide text labels that help explain the function of a button or other user interface action. Tooltips display informative text when users hover over, focus on, or long press an element.';

  @override
  String get demoTooltipInstructions =>
      'Long press or hover to display the tooltip.';

  @override
  String get bottomNavigationCommentsTab => 'Comments';

  @override
  String get bottomNavigationCalendarTab => 'Calendar';

  @override
  String get bottomNavigationAccountTab => 'Account';

  @override
  String get bottomNavigationAlarmTab => 'Alarm';

  @override
  String get bottomNavigationCameraTab => 'Camera';

  @override
  String bottomNavigationContentPlaceholder(Object title) {
    return 'Placeholder for ${title} tab';
  }

  @override
  String get buttonTextCreate => 'Create';

  @override
  String dialogSelectedOption(Object value) {
    return 'You selected: \"${value}\"';
  }

  @override
  String get chipTurnOnLights => 'Turn on lights';

  @override
  String get chipSmall => 'Small';

  @override
  String get chipMedium => 'Medium';

  @override
  String get chipLarge => 'Large';

  @override
  String get chipElevator => 'Elevator';

  @override
  String get chipWasher => 'Washer';

  @override
  String get chipFireplace => 'Fireplace';

  @override
  String get chipBiking => 'Biking';

  @override
  String get dialogDiscardTitle => 'Discard draft?';

  @override
  String get dialogLocationTitle => 'Use Google\'s location service?';

  @override
  String get dialogLocationDescription =>
      'Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running.';

  @override
  String get dialogCancel => 'CANCEL';

  @override
  String get dialogDiscard => 'DISCARD';

  @override
  String get dialogDisagree => 'DISAGREE';

  @override
  String get dialogAgree => 'AGREE';

  @override
  String get dialogSetBackup => 'Set backup account';

  @override
  String get dialogAddAccount => 'Add account';

  @override
  String get dialogShow => 'SHOW DIALOG';

  @override
  String get dialogFullscreenTitle => 'Full Screen Dialog';

  @override
  String get dialogFullscreenSave => 'SAVE';

  @override
  String get dialogFullscreenDescription => 'A full screen dialog demo';

  @override
  String get cupertinoButton => 'Button';

  @override
  String get cupertinoButtonWithBackground => 'With Background';

  @override
  String get cupertinoAlertCancel => 'Cancel';

  @override
  String get cupertinoAlertDiscard => 'Discard';

  @override
  String get cupertinoAlertLocationTitle =>
      'Allow \"Maps\" to access your location while you are using the app?';

  @override
  String get cupertinoAlertLocationDescription =>
      'Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times.';

  @override
  String get cupertinoAlertAllow => 'Allow';

  @override
  String get cupertinoAlertDontAllow => 'Don\'t Allow';

  @override
  String get cupertinoAlertFavoriteDessert => 'Select Favorite Dessert';

  @override
  String get cupertinoAlertDessertDescription =>
      'Please select your favorite type of dessert from the list below. Your selection will be used to customize the suggested list of eateries in your area.';

  @override
  String get cupertinoAlertCheesecake => 'Cheesecake';

  @override
  String get cupertinoAlertTiramisu => 'Tiramisu';

  @override
  String get cupertinoAlertApplePie => 'Apple Pie';

  @override
  String get cupertinoAlertChocolateBrownie => 'Chocolate Brownie';

  @override
  String get cupertinoShowAlert => 'Show Alert';

  @override
  String get colorsRed => 'RED';

  @override
  String get colorsPink => 'PINK';

  @override
  String get colorsPurple => 'PURPLE';

  @override
  String get colorsDeepPurple => 'DEEP PURPLE';

  @override
  String get colorsIndigo => 'INDIGO';

  @override
  String get colorsBlue => 'BLUE';

  @override
  String get colorsLightBlue => 'LIGHT BLUE';

  @override
  String get colorsCyan => 'CYAN';

  @override
  String get colorsTeal => 'TEAL';

  @override
  String get colorsGreen => 'GREEN';

  @override
  String get colorsLightGreen => 'LIGHT GREEN';

  @override
  String get colorsLime => 'LIME';

  @override
  String get colorsYellow => 'YELLOW';

  @override
  String get colorsAmber => 'AMBER';

  @override
  String get colorsOrange => 'ORANGE';

  @override
  String get colorsDeepOrange => 'DEEP ORANGE';

  @override
  String get colorsBrown => 'BROWN';

  @override
  String get colorsGrey => 'GREY';

  @override
  String get colorsBlueGrey => 'BLUE GREY';

  @override
  String get placeChennai => 'Chennai';

  @override
  String get placeTanjore => 'Tanjore';

  @override
  String get placeChettinad => 'Chettinad';

  @override
  String get placePondicherry => 'Pondicherry';

  @override
  String get placeFlowerMarket => 'Flower Market';

  @override
  String get placeBronzeWorks => 'Bronze Works';

  @override
  String get placeMarket => 'Market';

  @override
  String get placeThanjavurTemple => 'Thanjavur Temple';

  @override
  String get placeSaltFarm => 'Salt Farm';

  @override
  String get placeScooters => 'Scooters';

  @override
  String get placeSilkMaker => 'Silk Maker';

  @override
  String get placeLunchPrep => 'Lunch Prep';

  @override
  String get placeBeach => 'Beach';

  @override
  String get placeFisherman => 'Fisherman';

  @override
  String get starterAppTitle => 'Starter app';

  @override
  String get starterAppDescription => 'A responsive starter layout';

  @override
  String get starterAppGenericButton => 'BUTTON';

  @override
  String get starterAppTooltipAdd => 'Add';

  @override
  String get starterAppTooltipFavorite => 'Favorite';

  @override
  String get starterAppTooltipShare => 'Share';

  @override
  String get starterAppTooltipSearch => 'Search';

  @override
  String get starterAppGenericTitle => 'Title';

  @override
  String get starterAppGenericSubtitle => 'Subtitle';

  @override
  String get starterAppGenericHeadline => 'Headline';

  @override
  String get starterAppGenericBody => 'Body';

  @override
  String starterAppDrawerItem(Object value) {
    return 'Item ${value}';
  }

  @override
  String get shrineMenuCaption => 'MENU';

  @override
  String get shrineCategoryNameAll => 'ALL';

  @override
  String get shrineCategoryNameAccessories => 'ACCESSORIES';

  @override
  String get shrineCategoryNameClothing => 'CLOTHING';

  @override
  String get shrineCategoryNameHome => 'HOME';

  @override
  String get shrineLogoutButtonCaption => 'LOGOUT';

  @override
  String get shrineLoginUsernameLabel => 'Username';

  @override
  String get shrineLoginPasswordLabel => 'Password';

  @override
  String get shrineCancelButtonCaption => 'CANCEL';

  @override
  String get shrineNextButtonCaption => 'NEXT';

  @override
  String get shrineCartPageCaption => 'CART';

  @override
  String shrineProductQuantity(Object quantity) {
    return 'Quantity: ${quantity}';
  }

  @override
  String shrineProductPrice(Object price) {
    return 'x ${price}';
  }

  @override
  String shrineCartItemCount(int quantity) {
    return intl.Intl.pluralLogic(
      quantity,
      locale: _localeName,
      zero: 'NO ITEMS',
      one: '1 ITEM',
      other: '${quantity} ITEMS',
    );
  }

  @override
  String get shrineCartClearButtonCaption => 'CLEAR CART';

  @override
  String get shrineCartTotalCaption => 'TOTAL';

  @override
  String get shrineCartSubtotalCaption => 'Subtotal:';

  @override
  String get shrineCartShippingCaption => 'Shipping:';

  @override
  String get shrineCartTaxCaption => 'Tax:';

  @override
  String get shrineProductVagabondSack => 'Vagabond sack';

  @override
  String get shrineProductStellaSunglasses => 'Stella sunglasses';

  @override
  String get shrineProductWhitneyBelt => 'Whitney belt';

  @override
  String get shrineProductGardenStrand => 'Garden strand';

  @override
  String get shrineProductStrutEarrings => 'Strut earrings';

  @override
  String get shrineProductVarsitySocks => 'Varsity socks';

  @override
  String get shrineProductWeaveKeyring => 'Weave keyring';

  @override
  String get shrineProductGatsbyHat => 'Gatsby hat';

  @override
  String get shrineProductShrugBag => 'Shrug bag';

  @override
  String get shrineProductGiltDeskTrio => 'Gilt desk trio';

  @override
  String get shrineProductCopperWireRack => 'Copper wire rack';

  @override
  String get shrineProductSootheCeramicSet => 'Soothe ceramic set';

  @override
  String get shrineProductHurrahsTeaSet => 'Hurrahs tea set';

  @override
  String get shrineProductBlueStoneMug => 'Blue stone mug';

  @override
  String get shrineProductRainwaterTray => 'Rainwater tray';

  @override
  String get shrineProductChambrayNapkins => 'Chambray napkins';

  @override
  String get shrineProductSucculentPlanters => 'Succulent planters';

  @override
  String get shrineProductQuartetTable => 'Quartet table';

  @override
  String get shrineProductKitchenQuattro => 'Kitchen quattro';

  @override
  String get shrineProductClaySweater => 'Clay sweater';

  @override
  String get shrineProductSeaTunic => 'Sea tunic';

  @override
  String get shrineProductPlasterTunic => 'Plaster tunic';

  @override
  String get shrineProductWhitePinstripeShirt => 'White pinstripe shirt';

  @override
  String get shrineProductChambrayShirt => 'Chambray shirt';

  @override
  String get shrineProductSeabreezeSweater => 'Seabreeze sweater';

  @override
  String get shrineProductGentryJacket => 'Gentry jacket';

  @override
  String get shrineProductNavyTrousers => 'Navy trousers';

  @override
  String get shrineProductWalterHenleyWhite => 'Walter henley (white)';

  @override
  String get shrineProductSurfAndPerfShirt => 'Surf and perf shirt';

  @override
  String get shrineProductGingerScarf => 'Ginger scarf';

  @override
  String get shrineProductRamonaCrossover => 'Ramona crossover';

  @override
  String get shrineProductClassicWhiteCollar => 'Classic white collar';

  @override
  String get shrineProductCeriseScallopTee => 'Cerise scallop tee';

  @override
  String get shrineProductShoulderRollsTee => 'Shoulder rolls tee';

  @override
  String get shrineProductGreySlouchTank => 'Grey slouch tank';

  @override
  String get shrineProductSunshirtDress => 'Sunshirt dress';

  @override
  String get shrineProductFineLinesTee => 'Fine lines tee';

  @override
  String get shrineTooltipSearch => 'Search';

  @override
  String get shrineTooltipSettings => 'Settings';

  @override
  String get shrineTooltipOpenMenu => 'Open menu';

  @override
  String get shrineTooltipCloseMenu => 'Close menu';

  @override
  String get shrineTooltipCloseCart => 'Close cart';

  @override
  String shrineScreenReaderCart(int quantity) {
    return intl.Intl.pluralLogic(
      quantity,
      locale: _localeName,
      zero: 'Shopping cart, no items',
      one: 'Shopping cart, 1 item',
      other: 'Shopping cart, ${quantity} items',
    );
  }

  @override
  String get shrineScreenReaderProductAddToCart => 'Add to cart';

  @override
  String shrineScreenReaderRemoveProductButton(Object product) {
    return 'Remove ${product}';
  }

  @override
  String get shrineTooltipRemoveItem => 'Remove item';

  @override
  String get craneFormDiners => 'Diners';

  @override
  String get craneFormDate => 'Select Date';

  @override
  String get craneFormTime => 'Select Time';

  @override
  String get craneFormLocation => 'Select Location';

  @override
  String get craneFormTravelers => 'Travelers';

  @override
  String get craneFormOrigin => 'Choose Origin';

  @override
  String get craneFormDestination => 'Choose Destination';

  @override
  String get craneFormDates => 'Select Dates';

  @override
  String craneHours(int hours) {
    return intl.Intl.pluralLogic(
      hours,
      locale: _localeName,
      one: '1h',
      other: '${hours}h',
    );
  }

  @override
  String craneMinutes(int minutes) {
    return intl.Intl.pluralLogic(
      minutes,
      locale: _localeName,
      one: '1m',
      other: '${minutes}m',
    );
  }

  @override
  String craneFlightDuration(Object hoursShortForm, Object minutesShortForm) {
    return '${hoursShortForm} ${minutesShortForm}';
  }

  @override
  String get craneFly => 'FLY';

  @override
  String get craneSleep => 'SLEEP';

  @override
  String get craneEat => 'EAT';

  @override
  String get craneFlySubhead => 'Explore Flights by Destination';

  @override
  String get craneSleepSubhead => 'Explore Properties by Destination';

  @override
  String get craneEatSubhead => 'Explore Restaurants by Destination';

  @override
  String craneFlyStops(int numberOfStops) {
    return intl.Intl.pluralLogic(
      numberOfStops,
      locale: _localeName,
      zero: 'Nonstop',
      one: '1 stop',
      other: '${numberOfStops} stops',
    );
  }

  @override
  String craneSleepProperties(int totalProperties) {
    return intl.Intl.pluralLogic(
      totalProperties,
      locale: _localeName,
      zero: 'No Available Properties',
      one: '1 Available Properties',
      other: '${totalProperties} Available Properties',
    );
  }

  @override
  String craneEatRestaurants(int totalRestaurants) {
    return intl.Intl.pluralLogic(
      totalRestaurants,
      locale: _localeName,
      zero: 'No Restaurants',
      one: '1 Restaurant',
      other: '${totalRestaurants} Restaurants',
    );
  }

  @override
  String get craneFly0 => 'Aspen, United States';

  @override
  String get craneFly1 => 'Big Sur, United States';

  @override
  String get craneFly2 => 'Khumbu Valley, Nepal';

  @override
  String get craneFly3 => 'Machu Picchu, Peru';

  @override
  String get craneFly4 => 'Malé, Maldives';

  @override
  String get craneFly5 => 'Vitznau, Switzerland';

  @override
  String get craneFly6 => 'Mexico City, Mexico';

  @override
  String get craneFly7 => 'Mount Rushmore, United States';

  @override
  String get craneFly8 => 'Singapore';

  @override
  String get craneFly9 => 'Havana, Cuba';

  @override
  String get craneFly10 => 'Cairo, Egypt';

  @override
  String get craneFly11 => 'Lisbon, Portugal';

  @override
  String get craneFly12 => 'Napa, United States';

  @override
  String get craneFly13 => 'Bali, Indonesia';

  @override
  String get craneSleep0 => 'Malé, Maldives';

  @override
  String get craneSleep1 => 'Aspen, United States';

  @override
  String get craneSleep2 => 'Machu Picchu, Peru';

  @override
  String get craneSleep3 => 'Havana, Cuba';

  @override
  String get craneSleep4 => 'Vitznau, Switzerland';

  @override
  String get craneSleep5 => 'Big Sur, United States';

  @override
  String get craneSleep6 => 'Napa, United States';

  @override
  String get craneSleep7 => 'Porto, Portugal';

  @override
  String get craneSleep8 => 'Tulum, Mexico';

  @override
  String get craneSleep9 => 'Lisbon, Portugal';

  @override
  String get craneSleep10 => 'Cairo, Egypt';

  @override
  String get craneSleep11 => 'Taipei, Taiwan';

  @override
  String get craneEat0 => 'Naples, Italy';

  @override
  String get craneEat1 => 'Dallas, United States';

  @override
  String get craneEat2 => 'Córdoba, Argentina';

  @override
  String get craneEat3 => 'Portland, United States';

  @override
  String get craneEat4 => 'Paris, France';

  @override
  String get craneEat5 => 'Seoul, South Korea';

  @override
  String get craneEat6 => 'Seattle, United States';

  @override
  String get craneEat7 => 'Nashville, United States';

  @override
  String get craneEat8 => 'Atlanta, United States';

  @override
  String get craneEat9 => 'Madrid, Spain';

  @override
  String get craneEat10 => 'Lisbon, Portugal';

  @override
  String get craneFly0SemanticLabel =>
      'Chalet in a snowy landscape with evergreen trees';

  @override
  String get craneFly1SemanticLabel => 'Tent in a field';

  @override
  String get craneFly2SemanticLabel =>
      'Prayer flags in front of snowy mountain';

  @override
  String get craneFly3SemanticLabel => 'Machu Picchu citadel';

  @override
  String get craneFly4SemanticLabel => 'Overwater bungalows';

  @override
  String get craneFly5SemanticLabel => 'Lake-side hotel in front of mountains';

  @override
  String get craneFly6SemanticLabel => 'Aerial view of Palacio de Bellas Artes';

  @override
  String get craneFly7SemanticLabel => 'Mount Rushmore';

  @override
  String get craneFly8SemanticLabel => 'Supertree Grove';

  @override
  String get craneFly9SemanticLabel => 'Man leaning on an antique blue car';

  @override
  String get craneFly10SemanticLabel => 'Al-Azhar Mosque towers during sunset';

  @override
  String get craneFly11SemanticLabel => 'Brick lighthouse at sea';

  @override
  String get craneFly12SemanticLabel => 'Pool with palm trees';

  @override
  String get craneFly13SemanticLabel => 'Sea-side pool with palm trees';

  @override
  String get craneSleep0SemanticLabel => 'Overwater bungalows';

  @override
  String get craneSleep1SemanticLabel =>
      'Chalet in a snowy landscape with evergreen trees';

  @override
  String get craneSleep2SemanticLabel => 'Machu Picchu citadel';

  @override
  String get craneSleep3SemanticLabel => 'Man leaning on an antique blue car';

  @override
  String get craneSleep4SemanticLabel =>
      'Lake-side hotel in front of mountains';

  @override
  String get craneSleep5SemanticLabel => 'Tent in a field';

  @override
  String get craneSleep6SemanticLabel => 'Pool with palm trees';

  @override
  String get craneSleep7SemanticLabel =>
      'Colorful apartments at Riberia Square';

  @override
  String get craneSleep8SemanticLabel => 'Mayan ruins on a cliff above a beach';

  @override
  String get craneSleep9SemanticLabel => 'Brick lighthouse at sea';

  @override
  String get craneSleep10SemanticLabel =>
      'Al-Azhar Mosque towers during sunset';

  @override
  String get craneSleep11SemanticLabel => 'Taipei 101 skyscraper';

  @override
  String get craneEat0SemanticLabel => 'Pizza in a wood-fired oven';

  @override
  String get craneEat1SemanticLabel => 'Empty bar with diner-style stools';

  @override
  String get craneEat2SemanticLabel => 'Burger';

  @override
  String get craneEat3SemanticLabel => 'Korean taco';

  @override
  String get craneEat4SemanticLabel => 'Chocolate dessert';

  @override
  String get craneEat5SemanticLabel => 'Artsy restaurant seating area';

  @override
  String get craneEat6SemanticLabel => 'Shrimp dish';

  @override
  String get craneEat7SemanticLabel => 'Bakery entrance';

  @override
  String get craneEat8SemanticLabel => 'Plate of crawfish';

  @override
  String get craneEat9SemanticLabel => 'Cafe counter with pastries';

  @override
  String get craneEat10SemanticLabel => 'Woman holding huge pastrami sandwich';

  @override
  String get fortnightlyMenuFrontPage => 'Front Page';

  @override
  String get fortnightlyMenuWorld => 'World';

  @override
  String get fortnightlyMenuUS => 'US';

  @override
  String get fortnightlyMenuPolitics => 'Politics';

  @override
  String get fortnightlyMenuBusiness => 'Business';

  @override
  String get fortnightlyMenuTech => 'Tech';

  @override
  String get fortnightlyMenuScience => 'Science';

  @override
  String get fortnightlyMenuSports => 'Sports';

  @override
  String get fortnightlyMenuTravel => 'Travel';

  @override
  String get fortnightlyMenuCulture => 'Culture';

  @override
  String get fortnightlyTrendingTechDesign => 'TechDesign';

  @override
  String get fortnightlyTrendingReform => 'Reform';

  @override
  String get fortnightlyTrendingHealthcareRevolution => 'HealthcareRevolution';

  @override
  String get fortnightlyTrendingGreenArmy => 'GreenArmy';

  @override
  String get fortnightlyTrendingStocks => 'Stocks';

  @override
  String get fortnightlyLatestUpdates => 'Latest Updates';

  @override
  String get fortnightlyHeadlineHealthcare =>
      'The Quiet, Yet Powerful Healthcare Revolution';

  @override
  String get fortnightlyHeadlineWar => 'Divided American Lives During War';

  @override
  String get fortnightlyHeadlineGasoline => 'The Future of Gasoline';

  @override
  String get fortnightlyHeadlineArmy => 'Reforming The Green Army From Within';

  @override
  String get fortnightlyHeadlineStocks =>
      'As Stocks Stagnate, Many Look To Currency';

  @override
  String get fortnightlyHeadlineFabrics =>
      'Designers Use Tech To Make Futuristic Fabrics';

  @override
  String get fortnightlyHeadlineFeminists => 'Feminists Take On Partisanship';

  @override
  String get fortnightlyHeadlineBees => 'Farmland Bees In Short Supply';
}

GalleryLocalizations _lookupGalleryLocalizations(Locale locale) {
  switch (locale.languageCode) {
    case 'en':
      {
        return GalleryLocalizationsEn();
      }
  }
  assert(false,
      'GalleryLocalizations.delegate failed to load unsupported locale "$locale"');
  return null;
}
