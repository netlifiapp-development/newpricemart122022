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
      'en': 'Shop now',
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
    'gvhycfsv': {
      'en': 'Pasig City',
      'tl': '',
    },
    'qt6r0d9e': {
      'en': 'Home',
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
    '1jm5zwaa': {
      'en': 'Forgot Password',
      'tl': '',
    },
    'qoprnt9v': {
      'en': 'Home',
      'tl': '',
    },
  },
  // ProductList
  {
    'b87yklex': {
      'en': 'Add to cart',
      'tl': '',
    },
    'azihu1mi': {
      'en': 'All Products',
      'tl': '',
    },
    'dokk0cub': {
      'en': 'Points 0.5',
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
  // ForgotPassword
  {
    'xnhp0ntz': {
      'en': 'Back',
      'tl': '',
    },
    'pedvuqaj': {
      'en': 'Forgot Password',
      'tl': '',
    },
    'ejfvhghn': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
      'tl': '',
    },
    'zao5s6i5': {
      'en': 'Your email address...',
      'tl': '',
    },
    '421aumr7': {
      'en': 'Enter your email...',
      'tl': '',
    },
    'z1zt6mcy': {
      'en': 'Send Link',
      'tl': '',
    },
    'asrrak4s': {
      'en': 'Home',
      'tl': '',
    },
  },
  // CategoryList
  {
    '8g1qb8tu': {
      'en': 'Snacks',
      'tl': '',
    },
    'if34mfi9': {
      'en': 'Limited Edition',
      'tl': '',
    },
    'aq1o9n44': {
      'en': 'Outerwear',
      'tl': '',
    },
    '79kp9i80': {
      'en': 'Pants',
      'tl': '',
    },
    '0p08uqpi': {
      'en': 'Shorts Sporty',
      'tl': '',
    },
    'vz6ovzxk': {
      'en': 'Shorts Casual',
      'tl': '',
    },
    'h26o94ia': {
      'en': 'Casual Tees',
      'tl': '',
    },
    '7a32hxam': {
      'en': 'Shoes',
      'tl': '',
    },
    'rxf6vjgu': {
      'en': 'Dairy',
      'tl': '',
    },
    'ek6xzmq7': {
      'en': 'Limited Edition',
      'tl': '',
    },
    'fqtp3mfs': {
      'en': 'Outerwear',
      'tl': '',
    },
    '6cghxdzt': {
      'en': 'Pants',
      'tl': '',
    },
    'fmevfhly': {
      'en': 'Shorts Sporty',
      'tl': '',
    },
    '7up6zz2m': {
      'en': 'Shorts Casual',
      'tl': '',
    },
    'vn0xb6ka': {
      'en': 'Casual Tees',
      'tl': '',
    },
    'iqxjpak2': {
      'en': 'Shoes',
      'tl': '',
    },
    '8wttf1rr': {
      'en': 'Personal Care',
      'tl': '',
    },
    'tjsffpo3': {
      'en': 'Outerwear',
      'tl': '',
    },
    'z5g9wl47': {
      'en': 'Pants',
      'tl': '',
    },
    'a3t6qzbo': {
      'en': 'Shorts Sporty',
      'tl': '',
    },
    'wpzlb47n': {
      'en': 'Shorts Casual',
      'tl': '',
    },
    'ai6uega5': {
      'en': 'Casual Tees',
      'tl': '',
    },
    'qd36xswy': {
      'en': 'Limited Edition',
      'tl': '',
    },
    '5tqgv23b': {
      'en': 'Shoes',
      'tl': '',
    },
    '2mmsw0c3': {
      'en': 'All Categories',
      'tl': '',
    },
    '7wm1nlja': {
      'en': 'Category',
      'tl': '',
    },
  },
  // Mycart
  {
    '5dp1c5qj': {
      'en': 'Below are the items in your cart.',
      'tl': '',
    },
    'untwbd6u': {
      'en': 'AirMax Low',
      'tl': '',
    },
    'ngxyjb1u': {
      'en': '\$120.00',
      'tl': '',
    },
    'dohs28uh': {
      'en': 'Quanity: 1',
      'tl': '',
    },
    '3ugxhqjd': {
      'en': 'Zion 1',
      'tl': '',
    },
    '2zog1rma': {
      'en': '\$120.00',
      'tl': '',
    },
    '44niltz1': {
      'en': 'Quanity: 1',
      'tl': '',
    },
    'jvpvg9o0': {
      'en': 'Jumpsuit',
      'tl': '',
    },
    'tcdlhzse': {
      'en': '\$120.00',
      'tl': '',
    },
    '9j2b9l7f': {
      'en': 'Quanity: 1',
      'tl': '',
    },
    'fp0m058u': {
      'en': 'Price Breakdown',
      'tl': '',
    },
    'ditay4jl': {
      'en': 'Base Price',
      'tl': '',
    },
    'xxxeo04x': {
      'en': '\$120.00',
      'tl': '',
    },
    'spccvu5p': {
      'en': 'Taxes',
      'tl': '',
    },
    'bx4sx2v9': {
      'en': '\$12.25',
      'tl': '',
    },
    'vmmmfpcl': {
      'en': 'Total',
      'tl': '',
    },
    'uec8irkr': {
      'en': '\$137.75',
      'tl': '',
    },
    'xtpqn45n': {
      'en': 'Checkout (\$137.75)',
      'tl': '',
    },
    'o0hgrd9u': {
      'en': 'My Cart',
      'tl': '',
    },
    'spa2sx3v': {
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
