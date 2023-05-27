import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'tl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? tlText = '',
  }) =>
      [enText, tlText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // MenuPage
  {
    'pj16q0hq': {
      'en': 'Cart',
      'tl': '',
    },
    'z2u89dbr': {
      'en': 'Points:  1',
      'tl': '',
    },
    'vpoe6lzh': {
      'en': 'Add',
      'tl': '',
    },
    'ik8ffimo': {
      'en': 'Home',
      'tl': '',
    },
  },
  // CheckoutPage
  {
    'eqdqj5q3': {
      'en': 'Cart',
      'tl': '',
    },
    'zot8adbc': {
      'en': 'Select your dishes from the menu below.',
      'tl': '',
    },
    'wngk9ldh': {
      'en': 'qnt: 1',
      'tl': '',
    },
    'p94ogrnx': {
      'en': 'Total Price',
      'tl': '',
    },
    '3by4n1qg': {
      'en': '₱10.99',
      'tl': '',
    },
    'rm49aqis': {
      'en': 'Checkout',
      'tl': '',
    },
    're9jtiqx': {
      'en': 'Home',
      'tl': '',
    },
  },
  // Home
  {
    'g52zm4yx': {
      'en': 'Search products...',
      'tl': '',
    },
    'ixpjaarr': {
      'en': 'Cookies',
      'tl': '',
    },
    'xlv95rje': {
      'en': 'Vegetables',
      'tl': '',
    },
    'o1mvses8': {
      'en': 'Instant Meals',
      'tl': '',
    },
    '36d9y7cx': {
      'en': 'Condiments',
      'tl': '',
    },
    'rv8umzda': {
      'en': 'Fruits',
      'tl': '',
    },
    'dx3lm2ll': {
      'en': 'Categories',
      'tl': '',
    },
    'e87jxeru': {
      'en': 'See All',
      'tl': '',
    },
    '5lsuz2d9': {
      'en': 'Points: 1',
      'tl': '',
    },
    'qt6r0d9e': {
      'en': 'Home',
      'tl': '',
    },
  },
  // CategoryList
  {
    'wx23952f': {
      'en': 'All Items',
      'tl': '',
    },
    '25tnng7d': {
      'en': ' ',
      'tl': '',
    },
    'iww1o40f': {
      'en': 'Pieces/Kg',
      'tl': '',
    },
    'gjyf4nkg': {
      'en': 'Title',
      'tl': '',
    },
    'izcjx4ym': {
      'en': 'Subtext',
      'tl': '',
    },
    'v9yz5wzm': {
      'en': '\$11.00',
      'tl': '',
    },
    'fzesp3p0': {
      'en': 'Title',
      'tl': '',
    },
    'fk2gpzbf': {
      'en': 'Subtext',
      'tl': '',
    },
    '5h2hnamx': {
      'en': '\$11.00',
      'tl': '',
    },
    '8zwtixlf': {
      'en': 'Title',
      'tl': '',
    },
    'p3rd10rf': {
      'en': 'Subtext',
      'tl': '',
    },
    'cbee3amh': {
      'en': '\$11.00',
      'tl': '',
    },
    'c20nkebf': {
      'en': 'Title',
      'tl': '',
    },
    'srdh8cnm': {
      'en': 'Subtext',
      'tl': '',
    },
    'v7cercwl': {
      'en': '\$11.00',
      'tl': '',
    },
    'lq9wwnfp': {
      'en': 'Title',
      'tl': '',
    },
    'dgc65mcv': {
      'en': 'Subtext',
      'tl': '',
    },
    'xed5b22a': {
      'en': '\$11.00',
      'tl': '',
    },
    'p3eyn109': {
      'en': 'Title',
      'tl': '',
    },
    'mkofzi2r': {
      'en': 'Subtext',
      'tl': '',
    },
    '7082jt6f': {
      'en': '\$11.00',
      'tl': '',
    },
    'z97600pt': {
      'en': 'Category',
      'tl': '',
    },
  },
  // Profile
  {
    'wdkdczy8': {
      'en': 'Account',
      'tl': '',
    },
    'lq8kmhdk': {
      'en': 'My Orders',
      'tl': '',
    },
    'ofv1x6yl': {
      'en': 'Rewards',
      'tl': '',
    },
    '23w7zifc': {
      'en': 'Unilevel Rewards',
      'tl': '',
    },
    'g5r02dd0': {
      'en': 'Edit Profile',
      'tl': '',
    },
    'b7zsjob6': {
      'en': 'General',
      'tl': '',
    },
    'hfkyjsmg': {
      'en': 'Send Qr Code',
      'tl': '',
    },
    'hj6owimh': {
      'en': 'Invite Friends',
      'tl': '',
    },
    'lr2c6l4o': {
      'en': 'Logout',
      'tl': '',
    },
    '1hmqaedy': {
      'en': 'Profile',
      'tl': '',
    },
    '1hz353o6': {
      'en': 'Profile',
      'tl': '',
    },
  },
  // Updateprofile
  {
    'nb7gm8c3': {
      'en': 'Change Photo',
      'tl': '',
    },
    '5bzmewow': {
      'en': 'Sponsor ID',
      'tl': '',
    },
    'vg24p6sh': {
      'en': 'Full Name',
      'tl': '',
    },
    'xftdxxjl': {
      'en': 'Phone',
      'tl': '',
    },
    'cd8v2m1y': {
      'en': 'City',
      'tl': '',
    },
    '62fnux1u': {
      'en': 'Update Profile',
      'tl': '',
    },
    'j4x5agxb': {
      'en': 'Update Information',
      'tl': '',
    },
    'dphcbb3d': {
      'en': 'Skip',
      'tl': '',
    },
  },
  // ProductDetails
  {
    'p41cdb29': {
      'en': 'Back to Products',
      'tl': '',
    },
    'f8zv1gk4': {
      'en':
          'Sporty style from the archives inspires this iconic track top. A stand-up collar and the signature sheen of tricot give it a retro vibe. Made for relaxing between sessions, the full-zip jacket has a recycled polyester build.',
      'tl': '',
    },
    'wj1zx3ex': {
      'en': 'Add to Cart',
      'tl': '',
    },
    'f2bjqevp': {
      'en': 'Order Now',
      'tl': '',
    },
  },
  // Onboard1
  {
    'hq1ew3gn': {
      'en': 'Home',
      'tl': '',
    },
  },
  // Onboard2
  {
    '5zy08x97': {
      'en': 'Home',
      'tl': '',
    },
  },
  // Register
  {
    'df73rc4g': {
      'en': 'Create Account',
      'tl': '',
    },
    'efp2gir8': {
      'en': 'Name',
      'tl': '',
    },
    '467cc09x': {
      'en': 'Enter your name',
      'tl': '',
    },
    'yj0a1f6c': {
      'en': 'Email',
      'tl': '',
    },
    '47if5thi': {
      'en': 'Enter your email',
      'tl': '',
    },
    'wwufnrm9': {
      'en': 'Password',
      'tl': '',
    },
    '4n7ur5i8': {
      'en': 'Enter your password',
      'tl': '',
    },
    'w5uwro4b': {
      'en': 'Confirm Password',
      'tl': '',
    },
    'jki6ghkc': {
      'en': 'Confirm your password',
      'tl': '',
    },
    'jpphhm5m': {
      'en': 'Create Account',
      'tl': '',
    },
    '8zogyp9o': {
      'en': 'Sign in',
      'tl': '',
    },
    'xb1d6cr8': {
      'en': 'Log In',
      'tl': '',
    },
    'bjxjjw14': {
      'en': 'Email address',
      'tl': '',
    },
    'n9a3dpmt': {
      'en': 'Enter your email...',
      'tl': '',
    },
    '48ngzhpz': {
      'en': 'Password',
      'tl': '',
    },
    'rk92k8zv': {
      'en': 'Enter your password...',
      'tl': '',
    },
    '9svc7dsd': {
      'en': 'Login',
      'tl': '',
    },
    'glrdzlxp': {
      'en': 'Skip for now',
      'tl': '',
    },
    '7hnk6szn': {
      'en': 'Create account',
      'tl': '',
    },
    'qoprnt9v': {
      'en': 'Home',
      'tl': '',
    },
  },
  // Home8ProductList
  {
    'b87yklex': {
      'en': 'Order Now',
      'tl': '',
    },
    'azihu1mi': {
      'en': 'Our menu is below',
      'tl': '',
    },
    'bzp5wouh': {
      'en': 'Title',
      'tl': '',
    },
    'dokk0cub': {
      'en': 'Subtext',
      'tl': '',
    },
    '5et93261': {
      'en': '\$11.00',
      'tl': '',
    },
    'bwgm48l4': {
      'en': 'Title',
      'tl': '',
    },
    'tv9d7a92': {
      'en': 'Subtext',
      'tl': '',
    },
    '1zqmse5e': {
      'en': '\$11.00',
      'tl': '',
    },
    '834hdhmn': {
      'en': 'Title',
      'tl': '',
    },
    'x0v36uvv': {
      'en': 'Subtext',
      'tl': '',
    },
    'sjucu7mn': {
      'en': '\$11.00',
      'tl': '',
    },
    '0zjh8m6r': {
      'en': 'Title',
      'tl': '',
    },
    'tazhwx73': {
      'en': 'Subtext',
      'tl': '',
    },
    'pb1k3af1': {
      'en': '\$11.00',
      'tl': '',
    },
    'm6tfysur': {
      'en': 'Title',
      'tl': '',
    },
    'uko1cc4v': {
      'en': 'Subtext',
      'tl': '',
    },
    'isjqdgql': {
      'en': '\$11.00',
      'tl': '',
    },
    'a2m046nh': {
      'en': 'Title',
      'tl': '',
    },
    'te7ejms9': {
      'en': 'Subtext',
      'tl': '',
    },
    '60tksycs': {
      'en': '\$11.00',
      'tl': '',
    },
    'b62thpf2': {
      'en': 'Title',
      'tl': '',
    },
    'ugb5ely9': {
      'en': 'Subtext',
      'tl': '',
    },
    'xt21xfmj': {
      'en': '\$11.00',
      'tl': '',
    },
    'ykauxryy': {
      'en': 'Home',
      'tl': '',
    },
  },
  // Miscellaneous
  {
    'lfleeww1': {
      'en': '',
      'tl': '',
    },
    'c8kadp77': {
      'en': '',
      'tl': '',
    },
    'k48k1o9l': {
      'en': '',
      'tl': '',
    },
    'vipvwyra': {
      'en': '',
      'tl': '',
    },
    'zcprzlre': {
      'en': '',
      'tl': '',
    },
    'e4842lsx': {
      'en': '',
      'tl': '',
    },
    'jujlyjc1': {
      'en': '',
      'tl': '',
    },
    '7shiski3': {
      'en': '',
      'tl': '',
    },
    '4mm9v6co': {
      'en': '',
      'tl': '',
    },
    'pctrm65k': {
      'en': '',
      'tl': '',
    },
    'uuqablw3': {
      'en': '',
      'tl': '',
    },
    'v2f9u2qo': {
      'en': '',
      'tl': '',
    },
    'u46xyhue': {
      'en': '',
      'tl': '',
    },
    'zpud42yq': {
      'en': '',
      'tl': '',
    },
    'um0ve5ei': {
      'en': '',
      'tl': '',
    },
    'iaunue4f': {
      'en': '',
      'tl': '',
    },
    'j5g3rbb3': {
      'en': '',
      'tl': '',
    },
    'zox14hgo': {
      'en': '',
      'tl': '',
    },
    'xpwcqi5r': {
      'en': '',
      'tl': '',
    },
    'h92hznx8': {
      'en': '',
      'tl': '',
    },
    'ozz14i3c': {
      'en': '',
      'tl': '',
    },
    'td41c427': {
      'en': '',
      'tl': '',
    },
    '2wc15swr': {
      'en': '',
      'tl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
