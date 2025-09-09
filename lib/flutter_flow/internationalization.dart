import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['pt', 'en'];

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
    String? ptText = '',
    String? enText = '',
  }) =>
      [ptText, enText][languageIndex] ?? '';

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

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

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

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Formulario
  {
    'nncmsbog': {
      'pt': 'Nome',
      'en': '',
    },
    '6ysxbmyq': {
      'pt': 'Digite seu nome',
      'en': '',
    },
    'uw0wz60g': {
      'pt': 'Data de Nascimento',
      'en': '',
    },
    'pyp4osjs': {
      'pt': 'Digite sua data de nascimento',
      'en': '',
    },
    'sgathg2s': {
      'pt': 'Gênero',
      'en': '',
    },
    'sct8d3zb': {
      'pt': 'Feminino',
      'en': '',
    },
    'oheljdpf': {
      'pt': 'Masculino',
      'en': '',
    },
    'zxd5kxew': {
      'pt': 'Motivo de usar o aplicativo',
      'en': '',
    },
    'uta8rzdq': {
      'pt': 'Galeria',
      'en': '',
    },
    'vd94gmlv': {
      'pt': 'Câmera',
      'en': '',
    },
    'z3va02dw': {
      'pt': 'Enviar e entrar',
      'en': '',
    },
    '7eryrh0g': {
      'pt': 'Por favor, insira seu nome completo',
      'en': '',
    },
    'coy15mee': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '9sroaasd': {
      'pt': 'Por favor, insira sua idade ',
      'en': '',
    },
    'jf7wl6jc': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hofcms1e': {
      'pt': 'Por favor, coloque sua data de nascimento',
      'en': '',
    },
    'v59zomlx': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    'wluxclea': {
      'pt': 'Field is required',
      'en': '',
    },
    'okm1seil': {
      'pt': 'Please choose an option from the dropdown',
      'en': '',
    },
    '98c9dxkx': {
      'pt': 'Criando o seu perfil',
      'en': '',
    },
    'iy7fnjdq': {
      'pt': 'Por favor, nos ajude com essas questões:',
      'en': '',
    },
    'zgfg5riq': {
      'pt': 'Home',
      'en': '',
    },
  },
  // board_emotion
  {
    'kdpgdfn8': {
      'pt': 'Configurações',
      'en': '',
    },
    'lspb5ya9': {
      'pt': 'ESTOU',
      'en': '',
    },
    'wdodrvs6': {
      'pt': 'BEM',
      'en': '',
    },
    'jp10x4o0': {
      'pt': 'MAL',
      'en': '',
    },
    'y94j4qt3': {
      'pt': 'MAIS OU MENOS',
      'en': '',
    },
    'fflw857j': {
      'pt': 'CONFUSO',
      'en': '',
    },
    '8ieqennl': {
      'pt': 'FELIZ',
      'en': '',
    },
    '6w6c4bj5': {
      'pt': 'TRISTE',
      'en': '',
    },
    'das1ebn7': {
      'pt': 'NORMAL',
      'en': '',
    },
    'hq1yvuu6': {
      'pt': 'ANGUSTIADO',
      'en': '',
    },
    'lopyb0ga': {
      'pt': 'VERGONHA',
      'en': '',
    },
    'de1k1q9e': {
      'pt': 'NOJO',
      'en': '',
    },
    'uxhe6xul': {
      'pt': 'ANSIOSO',
      'en': '',
    },
    'vciqgbpi': {
      'pt': 'BRAVO',
      'en': '',
    },
    'nkg5hyhf': {
      'pt': 'IRRITADO',
      'en': '',
    },
    's029uloc': {
      'pt': 'SURPRESO',
      'en': '',
    },
    'xwsr5d8g': {
      'pt': 'SÉRIO',
      'en': '',
    },
    'htzlmiuk': {
      'pt': 'DISTRAÍDO',
      'en': '',
    },
    'bvppyj0f': {
      'pt': 'LIMPAR',
      'en': '',
    },
    'mxgucx7r': {
      'pt': 'VOLTAR',
      'en': '',
    },
    'cul8jknl': {
      'pt': 'PLAY',
      'en': '',
    },
    '5le5jemw': {
      'pt': 'PARAR',
      'en': '',
    },
    'cttnws24': {
      'pt': 'ANTERIOR',
      'en': '',
    },
    '96eyvwii': {
      'pt': 'PRANCHAS CAA',
      'en': '',
    },
    '7wvfo2ov': {
      'pt': 'Estou',
      'en': '',
    },
    'hm88t7hy': {
      'pt': 'Bem',
      'en': '',
    },
    'p3xwl131': {
      'pt': 'Mal',
      'en': '',
    },
    '1fbebvjd': {
      'pt': 'Mais ou Menos',
      'en': '',
    },
    'j55sn1zt': {
      'pt': 'CONFUSO',
      'en': '',
    },
    '6qmc4il1': {
      'pt': 'FELIZ',
      'en': '',
    },
    'il2de1ay': {
      'pt': 'TRISTE',
      'en': '',
    },
    '78iolwn0': {
      'pt': 'NORMAL',
      'en': '',
    },
    'h02rnq1m': {
      'pt': 'ANGUSTIADO',
      'en': '',
    },
    '8xc3758g': {
      'pt': 'VERGONHA',
      'en': '',
    },
    'm0c8nbb2': {
      'pt': 'NOJO',
      'en': '',
    },
    '2zxlunuu': {
      'pt': 'ANSIOSO',
      'en': '',
    },
    'i4yjip69': {
      'pt': 'BRAVO',
      'en': '',
    },
    '0470m6zy': {
      'pt': 'IRRITADO',
      'en': '',
    },
    '71ez5e6d': {
      'pt': 'SURPRESO',
      'en': '',
    },
    'l131k7g0': {
      'pt': 'SÉRIO',
      'en': '',
    },
    '1pj63wyw': {
      'pt': 'DISTRAÍDO',
      'en': '',
    },
    '4t258m0y': {
      'pt': 'Home',
      'en': '',
    },
  },
  // tela-login-cadastro
  {
    'v4p6kt0b': {
      'pt': 'Falando.com',
      'en': '',
    },
    'yg0t5ipn': {
      'pt': 'Criar conta',
      'en': '',
    },
    's0nvt5go': {
      'pt': 'Criar Conta',
      'en': '',
    },
    '4xux1x67': {
      'pt': 'Para começar preencha os campos abaixo',
      'en': '',
    },
    'e8kh3ohy': {
      'pt': 'Email',
      'en': '',
    },
    'rwljcs3s': {
      'pt': 'Senha',
      'en': '',
    },
    'j4e1fbrm': {
      'pt': 'Confirmar a senha',
      'en': '',
    },
    'x0hphonc': {
      'pt': 'Começar ',
      'en': '',
    },
    '97sgvwf7': {
      'pt': 'Ou crie com',
      'en': '',
    },
    'rus2uwgm': {
      'pt': 'Continuar com Google',
      'en': '',
    },
    'j63act4t': {
      'pt': 'Continuar com Apple',
      'en': '',
    },
    'ufut56kv': {
      'pt': 'Log In',
      'en': '',
    },
    'ebm4r171': {
      'pt': 'Bem vindo de volta !',
      'en': '',
    },
    'v5rrb2yo': {
      'pt': 'Preencha as informações para acessar a sua conta',
      'en': '',
    },
    'e98mfeld': {
      'pt': 'Email',
      'en': '',
    },
    'q7gfnl6k': {
      'pt': 'Senha',
      'en': '',
    },
    'vamaxl9i': {
      'pt': 'Entrar',
      'en': '',
    },
    'txm4wrzg': {
      'pt': 'Ou entre com',
      'en': '',
    },
    '26jlxx62': {
      'pt': 'Continuar com Google',
      'en': '',
    },
    'zk8vwl0p': {
      'pt': 'Continuar com Apple',
      'en': '',
    },
    'ofj5pkxv': {
      'pt': 'Esqueceu a senha ?',
      'en': '',
    },
    '3vfdg37r': {
      'pt': 'início',
      'en': '',
    },
  },
  // board_pronomes
  {
    '81zn08x1': {
      'pt': 'Configurações',
      'en': '',
    },
    'aba15ihz': {
      'pt': 'ELA',
      'en': '',
    },
    'us9xspls': {
      'pt': 'ELAS',
      'en': '',
    },
    '90h14ppg': {
      'pt': 'ELES',
      'en': '',
    },
    'ksdzenyf': {
      'pt': 'ELE',
      'en': '',
    },
    'm2u04k0c': {
      'pt': 'TU',
      'en': '',
    },
    'q3bohtbp': {
      'pt': 'NÓS',
      'en': '',
    },
    '9rq4zefg': {
      'pt': 'VÓS',
      'en': '',
    },
    '58j0ujmj': {
      'pt': 'MEU',
      'en': '',
    },
    'hcjk1cq5': {
      'pt': 'MEUS',
      'en': '',
    },
    'atp2ilp8': {
      'pt': 'SEU',
      'en': '',
    },
    '199833dj': {
      'pt': 'SEUS',
      'en': '',
    },
    '5pm6xmcp': {
      'pt': 'TEU',
      'en': '',
    },
    'i9q85lc1': {
      'pt': 'TEUS',
      'en': '',
    },
    'qe11oqj8': {
      'pt': 'NOSSO',
      'en': '',
    },
    'k6t729xe': {
      'pt': 'NOSSOS',
      'en': '',
    },
    '5xqj6xaq': {
      'pt': 'VOSSO',
      'en': '',
    },
    '2acva2nq': {
      'pt': 'VOSSOS',
      'en': '',
    },
    'pgp9vi9j': {
      'pt': 'LIMPAR',
      'en': '',
    },
    't5w0kaxg': {
      'pt': 'VOLTAR',
      'en': '',
    },
    'qhdkstra': {
      'pt': 'PLAY',
      'en': '',
    },
    '1kdc572l': {
      'pt': 'PARAR',
      'en': '',
    },
    '3f0x6p3u': {
      'pt': 'ANTERIOR',
      'en': '',
    },
    'y988xes4': {
      'pt': 'PRANCHAS CAA',
      'en': '',
    },
    '11t1ew12': {
      'pt': 'ELE',
      'en': '',
    },
    'ed3namtq': {
      'pt': 'ELES',
      'en': '',
    },
    'pleg1ckx': {
      'pt': 'ELA',
      'en': '',
    },
    '0bji0rm8': {
      'pt': 'ELAS',
      'en': '',
    },
    'vrwv7jme': {
      'pt': 'TU',
      'en': '',
    },
    '9i4waca0': {
      'pt': 'NÓS',
      'en': '',
    },
    'o35qp70o': {
      'pt': 'VÓS',
      'en': '',
    },
    '85bta7uz': {
      'pt': 'MEU',
      'en': '',
    },
    '22rxauc7': {
      'pt': 'MEUS',
      'en': '',
    },
    '4j79fkmn': {
      'pt': 'SEU',
      'en': '',
    },
    '3ffw7l2h': {
      'pt': 'SEUS',
      'en': '',
    },
    '1zq3qn2f': {
      'pt': 'TEU',
      'en': '',
    },
    'ullecqk9': {
      'pt': 'TEUS',
      'en': '',
    },
    'mx7plf17': {
      'pt': 'NOSSO',
      'en': '',
    },
    'kr5hhcn5': {
      'pt': 'NOSSOS',
      'en': '',
    },
    'adzuxix8': {
      'pt': 'VOSSO',
      'en': '',
    },
    'idsn6tkm': {
      'pt': 'VOSSOS',
      'en': '',
    },
    '2tukigrp': {
      'pt': '',
      'en': '',
    },
  },
  // conteudohistorico
  {
    'ytgtkx9f': {
      'pt': 'Page Title',
      'en': '',
    },
    'rvsf6gt2': {
      'pt': 'Home',
      'en': '',
    },
  },
  // historico
  {
    'nsr1cdyn': {
      'pt': 'Histórico de mensagens',
      'en': '',
    },
    '7pksyr39': {
      'pt': 'Pesquise por palavras-chave...',
      'en': '',
    },
    'klmxk9kn': {
      'pt': 'Filtro:',
      'en': '',
    },
    '1zh1ftxw': {
      'pt': 'Home',
      'en': '',
    },
  },
  // T_DISCIPLINAS
  {
    'a0lba9sg': {
      'pt': 'QUÍMICA',
      'en': '',
    },
    'ppms2sgo': {
      'pt': 'MATEMÁTICA',
      'en': '',
    },
    '74nwsioa': {
      'pt': 'FÍSICA',
      'en': '',
    },
    'gp444m5t': {
      'pt': 'BIOLOGIA',
      'en': '',
    },
    'j50f0da3': {
      'pt': 'DISCIPLINAS',
      'en': '',
    },
    'as6xaqee': {
      'pt': 'Home',
      'en': '',
    },
  },
  // aminas
  {
    'udoborcq': {
      'pt': 'Aminas',
      'en': '',
    },
    'cuvol83s': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    'olxe499d': {
      'pt': 'SEROTONINA',
      'en': '',
    },
    'imf3uth5': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'omv1yhbs': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'ozqfo5bp': {
      'pt': 'HUMOR',
      'en': '',
    },
    'ywfesi1x': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    '71ld5uol': {
      'pt': 'FAZER EXERCÍCIO FÍSICO',
      'en': '',
    },
    'lfm7l127': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    '6klc86gg': {
      'pt': 'DOPAMINA',
      'en': '',
    },
    'oygn6od1': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'uysxf1vr': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'eitq3cp3': {
      'pt': 'MOTIVAÇÃO',
      'en': '',
    },
    '0m2s7okc': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    'k0fm5c51': {
      'pt': 'ALIMENTAÇÃO SAUDÁVEL',
      'en': '',
    },
    '4h1cne1d': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    'aa5g3akw': {
      'pt': 'ENDORFINA',
      'en': '',
    },
    'u3l2zcgt': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'p42g5vwg': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'jrruytsw': {
      'pt': 'ALÍVIO DA DOR',
      'en': '',
    },
    '061mhhya': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    '7c3fl7xb': {
      'pt': 'BRINCAR',
      'en': '',
    },
    'q75e6n2l': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    'nobwo816': {
      'pt': 'OCITOCINA',
      'en': '',
    },
    '0q9gmv8c': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    '377hfcak': {
      'pt': '...',
      'en': '',
    },
    'dooia5yc': {
      'pt': '...',
      'en': '',
    },
    'xzk7ate5': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'y4plj1mq': {
      'pt': 'AMOR E PRAZER',
      'en': '',
    },
    'zg9f00s1': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    'i17zn5t2': {
      'pt': 'CARINHO',
      'en': '',
    },
    '7xui0uz9': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    'otjhejnn': {
      'pt': 'OCITOCINA',
      'en': '',
    },
    'c20i2k67': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'xokpzxxo': {
      'pt': '...',
      'en': '',
    },
    'qt7z5lyp': {
      'pt': '...',
      'en': '',
    },
    's76cmfhn': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    '2tw4biau': {
      'pt': 'AMOR E PRAZER',
      'en': '',
    },
    'sk74ges5': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    'h7y9pdd3': {
      'pt': 'CARINHO',
      'en': '',
    },
    '44sk70sa': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    '6r2ygdil': {
      'pt': 'ENDORFINA',
      'en': '',
    },
    'ka382oa1': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    '09byefc0': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'dzlwxd0c': {
      'pt': 'ALÍVIO DA DOR',
      'en': '',
    },
    'i1y2arod': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    'qq3qd2d3': {
      'pt': 'BRINCAR',
      'en': '',
    },
    'vsdv6rog': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    'a0cso834': {
      'pt': 'DOPAMINA',
      'en': '',
    },
    'hc4lna6n': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'a4zfcknp': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'dunvq2lq': {
      'pt': 'MOTIVAÇÃO',
      'en': '',
    },
    'd9i8ef2x': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    'rk33szt0': {
      'pt': 'ALIMENTAÇÃO SAUDÁVEL',
      'en': '',
    },
    'pwcj1p0e': {
      'pt': 'NOME DA MOLÉCULA',
      'en': '',
    },
    'mu7053p8': {
      'pt': 'SEROTONINA',
      'en': '',
    },
    'bmlajjyi': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'lv7h5p6g': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'abptj3l6': {
      'pt': 'HUMOR',
      'en': '',
    },
    'qifvdy3o': {
      'pt': 'COMO PRODUZIR',
      'en': '',
    },
    'nsroedpa': {
      'pt': 'FAZER EXERCÍCIO FÍSICO',
      'en': '',
    },
    'sl1siavi': {
      'pt': 'Home',
      'en': '',
    },
  },
  // board_geral
  {
    'c3jn0sc6': {
      'pt': 'Configurações',
      'en': '',
    },
    '1y3rs4wu': {
      'pt': 'EU',
      'en': '',
    },
    '36i57xio': {
      'pt': 'VOCÊ',
      'en': '',
    },
    'bp2vw20r': {
      'pt': 'PRONOMES',
      'en': '',
    },
    'jgg4o8bu': {
      'pt': 'OI',
      'en': '',
    },
    'dawhm3jw': {
      'pt': 'TCHAU',
      'en': '',
    },
    'ajx9hilg': {
      'pt': 'VER',
      'en': '',
    },
    'gj2zl57h': {
      'pt': 'AJUDAR',
      'en': '',
    },
    '28lq260k': {
      'pt': 'PEGAR',
      'en': '',
    },
    'r2453tug': {
      'pt': 'PARAR',
      'en': '',
    },
    'y7kp4q8s': {
      'pt': 'QUERER',
      'en': '',
    },
    'sasgeam4': {
      'pt': 'VERBOS',
      'en': '',
    },
    'u0f4mfyc': {
      'pt': 'O QUE?',
      'en': '',
    },
    'jwdnip39': {
      'pt': 'PORQUÊ?',
      'en': '',
    },
    'rhgfrn47': {
      'pt': 'PERGUNTAS',
      'en': '',
    },
    'dhah46ws': {
      'pt': 'TEMPO',
      'en': '',
    },
    '5tudldy0': {
      'pt': 'EMOÇÕES',
      'en': '',
    },
    '0ylmgzwz': {
      'pt': 'COMIDAS',
      'en': '',
    },
    'alsfv2mm': {
      'pt': 'COISAS',
      'en': '',
    },
    '3qykrck8': {
      'pt': 'SIM',
      'en': '',
    },
    '41gcvn58': {
      'pt': 'NÃO',
      'en': '',
    },
    'xospf1dk': {
      'pt': 'LIMPAR',
      'en': '',
    },
    'bhlq9181': {
      'pt': 'VOLTAR',
      'en': '',
    },
    'u084c0lg': {
      'pt': 'PLAY',
      'en': '',
    },
    '9pwxqmcp': {
      'pt': 'PARAR',
      'en': '',
    },
    'qyto6etb': {
      'pt': 'PARAR',
      'en': '',
    },
    '9856zckv': {
      'pt': 'PRANCHAS CAA',
      'en': '',
    },
    'a0bj1cl1': {
      'pt': 'EU',
      'en': '',
    },
    'mdt6rdux': {
      'pt': 'VOCÊ',
      'en': '',
    },
    '2f7o5gdz': {
      'pt': 'PRONOMES',
      'en': '',
    },
    'umqbgbn2': {
      'pt': 'OI',
      'en': '',
    },
    'c2rz0lpq': {
      'pt': 'TCHAU',
      'en': '',
    },
    'l0kxgum6': {
      'pt': 'QUERER',
      'en': '',
    },
    'hr9upshn': {
      'pt': 'VER',
      'en': '',
    },
    'i4rm6by5': {
      'pt': 'AJUDAR',
      'en': '',
    },
    'g5w01161': {
      'pt': 'PEGAR',
      'en': '',
    },
    'cpstdivz': {
      'pt': 'PARAR',
      'en': '',
    },
    '8kahjsfm': {
      'pt': 'VERBOS',
      'en': '',
    },
    '9e1fwxs5': {
      'pt': 'O QUE?',
      'en': '',
    },
    '18gb5juk': {
      'pt': 'PORQUÊ?',
      'en': '',
    },
    'a2x2ygoe': {
      'pt': 'PERGUNTAS',
      'en': '',
    },
    '7iguhumo': {
      'pt': 'TEMPO',
      'en': '',
    },
    'h9pyomin': {
      'pt': 'EMOÇÕES',
      'en': '',
    },
    '5blphe2l': {
      'pt': 'COMIDAS',
      'en': '',
    },
    'vu89zlrp': {
      'pt': 'COISAS',
      'en': '',
    },
    '4yp7e61u': {
      'pt': 'SIM',
      'en': '',
    },
    '1cpzp7qp': {
      'pt': 'NÃO',
      'en': '',
    },
    'zktnja0n': {
      'pt': 'Prancha geral',
      'en': '',
    },
  },
  // TEMAS_CAA
  {
    'he1md5yr': {
      'pt': 'DISCIPLINAS',
      'en': '',
    },
    'ja22qj1y': {
      'pt': 'BANHEIRO',
      'en': '',
    },
    'lpq40clm': {
      'pt': 'COZINHA',
      'en': '',
    },
    'v99gjg2m': {
      'pt': 'HOSPITAL',
      'en': '',
    },
    'kh2w0kiz': {
      'pt': 'ESCOLA',
      'en': '',
    },
    'fldhpnbt': {
      'pt': 'VÍDEO GAMES',
      'en': '',
    },
    '68wgtkob': {
      'pt': 'BRINCAR',
      'en': '',
    },
    'cybom5wh': {
      'pt': 'PRAIA',
      'en': '',
    },
    'gvt13gy0': {
      'pt': 'FILMES',
      'en': '',
    },
    'q2apq3b6': {
      'pt': 'TEMAS PARA PRANCHA',
      'en': '',
    },
    '2pfv8too': {
      'pt': 'TEMAS CAA',
      'en': '',
    },
  },
  // config
  {
    '8e78rvoz': {
      'pt': 'Profile',
      'en': '',
    },
    '4s54jkp0': {
      'pt': 'Mudar para tema escuro',
      'en': '',
    },
    'av7mmi0v': {
      'pt': 'Mudar para o tema claro',
      'en': '',
    },
    'bqyklwk1': {
      'pt': 'Configurações da Conta',
      'en': '',
    },
    'xlco2f0t': {
      'pt': 'Mudar senha',
      'en': '',
    },
    'eb1wpatg': {
      'pt': 'Editar perfil',
      'en': '',
    },
    'vxbxb7yl': {
      'pt': 'Área dos Responsáveis',
      'en': '',
    },
    'gis56dss': {
      'pt': 'Voltar',
      'en': '',
    },
    '2c7h4o7i': {
      'pt': 'Sair',
      'en': '',
    },
    'dltnk420': {
      'pt': 'Conta',
      'en': '',
    },
  },
  // T_BANHEIRO
  {
    'i5av6tjn': {
      'pt': 'COMO IR AO BANHEIRO ?',
      'en': '',
    },
    'ey0s0wfr': {
      'pt': 'MENINOS',
      'en': '',
    },
    '2s4ojzvj': {
      'pt': 'MENINAS',
      'en': '',
    },
    'jbpt1opv': {
      'pt': 'Home',
      'en': '',
    },
  },
  // T_MENINOS
  {
    's9t4etm9': {
      'pt': ' IR AO BANHEIRO ',
      'en': '',
    },
    'tuv7zgxh': {
      'pt': 'PARA FAZER XIXI ?',
      'en': '',
    },
    'gd9nsfrl': {
      'pt': 'PARA FAZER COCÔ ?',
      'en': '',
    },
    'b1r479o1': {
      'pt': 'Home',
      'en': '',
    },
  },
  // meninos_n1
  {
    '2hyv3jwf': {
      'pt': 'PASSO 1',
      'en': '',
    },
    'u1loirjb': {
      'pt': 'SUBIR A TAMPA \nDA PRIVADA',
      'en': '',
    },
    'ras1depd': {
      'pt': 'PASSO 2',
      'en': '',
    },
    'c0bl1208': {
      'pt': 'ABAIXAR A ROUPA',
      'en': '',
    },
    '9eyhbn4m': {
      'pt': 'PASSO 3',
      'en': '',
    },
    '6yo0xo24': {
      'pt': 'FAZER XIXI',
      'en': '',
    },
    'c2cbavd9': {
      'pt': 'PASSO 4',
      'en': '',
    },
    'zythhgfh': {
      'pt': 'SUBIR A ROUPA',
      'en': '',
    },
    'lhuzk0ow': {
      'pt': 'PASSO 5',
      'en': '',
    },
    'km2n9ge8': {
      'pt': 'ABAIXAR A TAMPA DA PRIVADA',
      'en': '',
    },
    '4spknsoo': {
      'pt': 'PASSO 6',
      'en': '',
    },
    'o0x3ak4e': {
      'pt': 'DAR DESCARGA',
      'en': '',
    },
    'k7v8nl7b': {
      'pt': 'PASSO 7',
      'en': '',
    },
    'f90obmq8': {
      'pt': 'LAVAR AS MÃOS',
      'en': '',
    },
    '8n9d0s3n': {
      'pt': 'PASSO 8',
      'en': '',
    },
    '5p2as2qf': {
      'pt': 'SECAR AS MÃOS',
      'en': '',
    },
    'zv4uzyuc': {
      'pt': 'PARA FAZER XIXI',
      'en': '',
    },
    'a5xxd0b8': {
      'pt': 'TEMAS CAA',
      'en': '',
    },
  },
  // meninos_n2
  {
    '08uag531': {
      'pt': 'PASSO 1',
      'en': '',
    },
    'nghwnfsz': {
      'pt': 'SUBIR A TAMPA \nDA PRIVADA',
      'en': '',
    },
    'qp10fw47': {
      'pt': 'PASSO 2',
      'en': '',
    },
    'ev81rmdq': {
      'pt': 'ABAIXAR A ROUPA',
      'en': '',
    },
    'ujczmq48': {
      'pt': 'PASSO 3',
      'en': '',
    },
    '73ixvhgn': {
      'pt': 'FAZER COCÔ',
      'en': '',
    },
    'nl5ukwoj': {
      'pt': 'PASSO 4',
      'en': '',
    },
    's65f8x85': {
      'pt': 'SUBIR A ROUPA',
      'en': '',
    },
    '3uz4vvbj': {
      'pt': 'PASSO 5',
      'en': '',
    },
    '537h6x9t': {
      'pt': 'ABAIXAR A TAMPA DA PRIVADA',
      'en': '',
    },
    '69mf886p': {
      'pt': 'PASSO 6',
      'en': '',
    },
    'ey3dut8y': {
      'pt': 'DAR DESCARGA',
      'en': '',
    },
    'f8wyeoma': {
      'pt': 'PASSO 7',
      'en': '',
    },
    'cugts2pe': {
      'pt': 'LAVAR AS MÃOS',
      'en': '',
    },
    'f0uyj5sg': {
      'pt': 'PASSO 8',
      'en': '',
    },
    'jutwrcln': {
      'pt': 'SECAR AS MÃOS',
      'en': '',
    },
    'jlcz2imz': {
      'pt': 'PARA FAZER COCÔ',
      'en': '',
    },
    '7epd4yh1': {
      'pt': 'TEMAS CAA',
      'en': '',
    },
  },
  // meninas_n1
  {
    'sr0v2wl6': {
      'pt': 'PASSO 1',
      'en': '',
    },
    'dr26gn3w': {
      'pt': 'SUBIR A TAMPA \nDA PRIVADA',
      'en': '',
    },
    '19uatkai': {
      'pt': 'PASSO 2',
      'en': '',
    },
    'zhbo8ly8': {
      'pt': 'ABAIXAR A ROUPA',
      'en': '',
    },
    'ffc36e16': {
      'pt': 'PASSO 3',
      'en': '',
    },
    'rkmnpj1o': {
      'pt': 'FAZER XIXI',
      'en': '',
    },
    'nxc74ngq': {
      'pt': 'PASSO 4',
      'en': '',
    },
    '30d3y849': {
      'pt': 'SUBIR A ROUPA',
      'en': '',
    },
    'dzwwrkyb': {
      'pt': 'PASSO 5',
      'en': '',
    },
    'wiivs3ca': {
      'pt': 'ABAIXAR A TAMPA DA PRIVADA',
      'en': '',
    },
    'v1ufptmw': {
      'pt': 'PASSO 6',
      'en': '',
    },
    '34rhm0qx': {
      'pt': 'DAR DESCARGA',
      'en': '',
    },
    'mnhn9i17': {
      'pt': 'PASSO 7',
      'en': '',
    },
    'rvcui5go': {
      'pt': 'LAVAR AS MÃOS',
      'en': '',
    },
    '4u0j8rs4': {
      'pt': 'PASSO 8',
      'en': '',
    },
    'f6ynu072': {
      'pt': 'SECAR AS MÃOS',
      'en': '',
    },
    '886vzkyb': {
      'pt': 'PARA FAZER XIXI',
      'en': '',
    },
    'hl7vamn5': {
      'pt': 'TEMAS CAA',
      'en': '',
    },
  },
  // meninas_n2
  {
    'becq4ord': {
      'pt': 'PASSO 1',
      'en': '',
    },
    'gfn6xcjc': {
      'pt': 'SUBIR A TAMPA \nDA PRIVADA',
      'en': '',
    },
    '6dxgt85m': {
      'pt': 'PASSO 2',
      'en': '',
    },
    'aeu1iq3q': {
      'pt': 'ABAIXAR A ROUPA',
      'en': '',
    },
    'gv9x10d8': {
      'pt': 'PASSO 3',
      'en': '',
    },
    '0sojasgn': {
      'pt': 'FAZER COCÔ',
      'en': '',
    },
    '5a7tkogk': {
      'pt': 'PASSO 4',
      'en': '',
    },
    'e7z28iic': {
      'pt': 'SUBIR A ROUPA',
      'en': '',
    },
    '76h60dds': {
      'pt': 'PASSO 5',
      'en': '',
    },
    '30wypytb': {
      'pt': 'ABAIXAR A TAMPA DA PRIVADA',
      'en': '',
    },
    '7mcvzz1z': {
      'pt': 'PASSO 6',
      'en': '',
    },
    'mcki7kur': {
      'pt': 'DAR DESCARGA',
      'en': '',
    },
    'pt8nafy3': {
      'pt': 'PASSO 7',
      'en': '',
    },
    'yszna14g': {
      'pt': 'LAVAR AS MÃOS',
      'en': '',
    },
    '010vkghy': {
      'pt': 'PASSO 8',
      'en': '',
    },
    '0mpyn5vf': {
      'pt': 'SECAR AS MÃOS',
      'en': '',
    },
    '4pgc26dk': {
      'pt': 'PARA FAZER COCÔ',
      'en': '',
    },
    'abexpv6y': {
      'pt': 'TEMAS CAA',
      'en': '',
    },
  },
  // T_MENINAS
  {
    '79au275n': {
      'pt': ' IR AO BANHEIRO ',
      'en': '',
    },
    'dq7akjlb': {
      'pt': 'PARA FAZER XIXI ?',
      'en': '',
    },
    'p2kktu6u': {
      'pt': 'PARA FAZER COCÔ ?',
      'en': '',
    },
    'g23b3r33': {
      'pt': 'Home',
      'en': '',
    },
  },
  // T_QUIMICA
  {
    '2cse2fy1': {
      'pt': 'QUÍMICA \nGERAL',
      'en': '',
    },
    'cgppuk2c': {
      'pt': 'FÍSICO \nQUÍMICA',
      'en': '',
    },
    '5g9r793q': {
      'pt': 'QUÍMICA \nORGÂNICA',
      'en': '',
    },
    'vpqtui2d': {
      'pt': 'QUÍMICA NA \nPRÁTICA',
      'en': '',
    },
    '7cmsrtx9': {
      'pt': 'TÓPICOS DE QUÍMICA',
      'en': '',
    },
    '51xm0f57': {
      'pt': 'Home',
      'en': '',
    },
  },
  // QUIMICA_ORGANICA
  {
    '4hnmzh02': {
      'pt': 'HIDROCARBONETOS',
      'en': '',
    },
    '4f02df3a': {
      'pt': 'FUNÇÕES OXIGENADAS',
      'en': '',
    },
    'c18dfk74': {
      'pt': 'FUNÇÕES NITROGENADAS',
      'en': '',
    },
    'kh4nbw70': {
      'pt': 'FUNÇÕES SULFURADAS',
      'en': '',
    },
    '46h3yifk': {
      'pt': 'QUÍMICA ORGÂNICA',
      'en': '',
    },
    'mdy20q23': {
      'pt': 'Home',
      'en': '',
    },
  },
  // To_nitrogenadas
  {
    'dcsssse7': {
      'pt': 'AMINAS',
      'en': '',
    },
    'yh3lism4': {
      'pt': 'AMIDAS',
      'en': '',
    },
    'xhp8fjm2': {
      'pt': 'NITRILAS',
      'en': '',
    },
    '2vnkuq08': {
      'pt': 'NITROCOMPOSTOS',
      'en': '',
    },
    '0yk1jh2g': {
      'pt': 'NITROGENADAS',
      'en': '',
    },
    'pvirz3t2': {
      'pt': 'Home',
      'en': '',
    },
  },
  // QUIMICA_PRATICA
  {
    'c0i2i6tr': {
      'pt': 'MEDICAMENTOS',
      'en': '',
    },
    'xvrnfqyz': {
      'pt': 'CAMINHO DO \nPETRÓLEO',
      'en': '',
    },
    '1l7jqurw': {
      'pt': 'TRATAMENTO DE \nÁGUA',
      'en': '',
    },
    'vbzf8ygm': {
      'pt': 'QUÍMICA NA \nCOZINHA',
      'en': '',
    },
    'nz0hfi51': {
      'pt': 'QUÍMICA NA PRÁTICA',
      'en': '',
    },
    '9nhpfoud': {
      'pt': 'Home',
      'en': '',
    },
  },
  // MEDICAMENTOS
  {
    'jz4raffu': {
      'pt': 'MEDICAMENTOS',
      'en': '',
    },
    '0xlosp4k': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'ojo1z520': {
      'pt': 'IBUPROFENO',
      'en': '',
    },
    'ahs3duue': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'wr5k7d9u': {
      'pt': 'MELHORA INFLAMAÇÕES',
      'en': '',
    },
    '73gzfx53': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'bzd0ld8u': {
      'pt': 'ÁCIDO CARBOXÍLICO',
      'en': '',
    },
    'j3t2bog5': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'csc0jijp': {
      'pt': 'DIPIRONA',
      'en': '',
    },
    '63bee0ts': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'srhs8h6k': {
      'pt': 'ALÍVIO DE DORES',
      'en': '',
    },
    '8atevy7g': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'xudwmmgv': {
      'pt': 'FUNÇÃO AMIDA',
      'en': '',
    },
    'nkb5vo9o': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'zzmjdb2e': {
      'pt': 'LORATADINA',
      'en': '',
    },
    'wojgtval': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'uxc896o8': {
      'pt': 'ALÍVIO DE ALERGIAS',
      'en': '',
    },
    'kwt3xc7o': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'mkjti58h': {
      'pt': 'FUNÇÃO ÉSTER',
      'en': '',
    },
    '65ap883n': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    '20mgzkg2': {
      'pt': 'PARACETAMOL',
      'en': '',
    },
    'xw5zebe6': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'rtv50vtc': {
      'pt': 'ALÍVIO DE FEBRE',
      'en': '',
    },
    'djfygjcp': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'pev7r305': {
      'pt': 'FUNÇÃO FENOL',
      'en': '',
    },
    '6n4f8qwz': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'p75v7dnd': {
      'pt': 'AMOXICILINA',
      'en': '',
    },
    'mlbrgb41': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'q46nor61': {
      'pt': 'ALÍVIO DE INFECÇÕES BACTERIANAS',
      'en': '',
    },
    'h6kwxuvn': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'me6jbwul': {
      'pt': 'FUNÇÃO AMINA',
      'en': '',
    },
    '60i18z6v': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    '47744p9g': {
      'pt': 'DRAMIN',
      'en': '',
    },
    'pfto56ti': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    '4y49ftjy': {
      'pt': 'ALÍVIO DE ENJÔO',
      'en': '',
    },
    'lba4sbgn': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    '1aueh2ej': {
      'pt': 'FUNÇÃO ÉTER',
      'en': '',
    },
    '62hgu4ki': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'env9dkkx': {
      'pt': 'IBUPROFENO',
      'en': '',
    },
    'trev0l62': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'md0l3ws5': {
      'pt': 'MELHORA INFLAMAÇÕES',
      'en': '',
    },
    'htxn7661': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    '7aijtui4': {
      'pt': 'ÁCIDO CARBOXÍLICO',
      'en': '',
    },
    'al606wmw': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'zpw0sjle': {
      'pt': 'DIPIRONA',
      'en': '',
    },
    'njtegvhr': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'g5oy4gkw': {
      'pt': 'ALÍVIO DE DORES',
      'en': '',
    },
    '8ifnoyxq': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'xhhpfn7r': {
      'pt': 'FUNÇÃO AMIDA',
      'en': '',
    },
    '01z9k1r4': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'ecmixcea': {
      'pt': 'LORATADINA',
      'en': '',
    },
    '7a24u7r0': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    '5sb3kmxf': {
      'pt': 'ALÍVIO DE ALERGIAS',
      'en': '',
    },
    'eyhqrin6': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    '8may1xcj': {
      'pt': 'FUNÇÃO ÉSTER',
      'en': '',
    },
    'bhffpm6y': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'jcrrblnd': {
      'pt': 'PARACETAMOL',
      'en': '',
    },
    '7nkvs418': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'e9ew32ic': {
      'pt': 'ALÍVIO DE FEBRE',
      'en': '',
    },
    'fiwmo3qv': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    'vj7l4olq': {
      'pt': 'FUNÇÃO FENOL',
      'en': '',
    },
    '3k3p0efp': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    '0eh9k3sb': {
      'pt': 'AMOXICILINA',
      'en': '',
    },
    'xl1codbu': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'g7frtvfc': {
      'pt': 'ALÍVIO DE INFECÇÕES ',
      'en': '',
    },
    'g9ycim6d': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    '2h6o26y4': {
      'pt': 'FUNÇÃO AMINA',
      'en': '',
    },
    'jn9ft5ke': {
      'pt': 'FÓRMULA ESTRUTURAL',
      'en': '',
    },
    'ugbz5me1': {
      'pt': 'DRAMIN',
      'en': '',
    },
    '0xk4ss3y': {
      'pt': 'PARA QUE SERVE',
      'en': '',
    },
    'oilzkba1': {
      'pt': 'ALÍVIO DE ENJÔO',
      'en': '',
    },
    'x4zt0ebm': {
      'pt': 'FUNÇÃO ESPECÍFICA',
      'en': '',
    },
    '975oh1ic': {
      'pt': 'BENZENO',
      'en': '',
    },
    '7mmh93tv': {
      'pt': 'Home',
      'en': '',
    },
  },
  // board_verbos
  {
    'w99ntfji': {
      'pt': 'Configurações',
      'en': '',
    },
    'h8d43cx6': {
      'pt': 'ANDAR',
      'en': '',
    },
    'b4ojap17': {
      'pt': 'BRINCAR',
      'en': '',
    },
    '1kwf8c7v': {
      'pt': 'ESCUTAR',
      'en': '',
    },
    'zqm3ls23': {
      'pt': 'CORRER',
      'en': '',
    },
    'd85r2xl0': {
      'pt': 'PULAR',
      'en': '',
    },
    'mxy6zyj7': {
      'pt': 'RIR',
      'en': '',
    },
    '5q2ixtpo': {
      'pt': 'ENTENDER',
      'en': '',
    },
    'pj6qls3x': {
      'pt': 'CHORAR',
      'en': '',
    },
    'wt0upozf': {
      'pt': 'TIRAR',
      'en': '',
    },
    '8hg87ae6': {
      'pt': 'COLOCAR',
      'en': '',
    },
    '42xitkdo': {
      'pt': 'MOSTAR',
      'en': '',
    },
    '9m5tach6': {
      'pt': 'PEDIR',
      'en': '',
    },
    'suwzwqy3': {
      'pt': 'CHAMAR',
      'en': '',
    },
    'x1boh4im': {
      'pt': 'ABAIXAR',
      'en': '',
    },
    'tliovdz9': {
      'pt': 'LEVANTAR',
      'en': '',
    },
    'sw0w8l0j': {
      'pt': 'FALAR',
      'en': '',
    },
    'xh4pbnga': {
      'pt': 'ESPERAR',
      'en': '',
    },
    'vtgdvaiy': {
      'pt': 'LAMBER',
      'en': '',
    },
    '8vwkm37v': {
      'pt': 'DAR',
      'en': '',
    },
    '9mfft40o': {
      'pt': 'SEGURAR',
      'en': '',
    },
    'tsvhpmlv': {
      'pt': 'FALAR',
      'en': '',
    },
    'qouzlt83': {
      'pt': 'ESPERAR',
      'en': '',
    },
    'xibq8yc0': {
      'pt': 'LAMBER',
      'en': '',
    },
    'skkbiw52': {
      'pt': 'DAR',
      'en': '',
    },
    'h2eby7i2': {
      'pt': 'SEGURAR',
      'en': '',
    },
    'ccewxvnt': {
      'pt': 'LIMPAR',
      'en': '',
    },
    '80s1ir35': {
      'pt': 'VOLTAR',
      'en': '',
    },
    'glejag4i': {
      'pt': 'PLAY',
      'en': '',
    },
    'srxi4v2d': {
      'pt': 'PARAR',
      'en': '',
    },
    'i7w2n28h': {
      'pt': 'ANTERIOR',
      'en': '',
    },
    '49l9ewzs': {
      'pt': 'PRANCHAS CAA',
      'en': '',
    },
    'rfmddax7': {
      'pt': 'ANDAR',
      'en': '',
    },
    'kdnhghqw': {
      'pt': 'BRINCAR',
      'en': '',
    },
    'k06zq3ea': {
      'pt': 'ESCUTAR',
      'en': '',
    },
    'qv7k6zsz': {
      'pt': 'CORRER',
      'en': '',
    },
    'ab87ohoz': {
      'pt': 'PULAR',
      'en': '',
    },
    'p13zb12w': {
      'pt': 'RIR',
      'en': '',
    },
    'xzjpjlwi': {
      'pt': 'ENTENDER',
      'en': '',
    },
    '0s0t9q3p': {
      'pt': 'CHORAR',
      'en': '',
    },
    '7m62yhum': {
      'pt': 'TIRAR',
      'en': '',
    },
    '7ghyt7au': {
      'pt': 'COLOCAR',
      'en': '',
    },
    '2wnq793v': {
      'pt': 'MOSTRAR',
      'en': '',
    },
    'arsx1mm7': {
      'pt': 'PEDIR',
      'en': '',
    },
    'm6pimzfe': {
      'pt': 'CHAMAR',
      'en': '',
    },
    'iagslyhz': {
      'pt': 'ABAIXAR',
      'en': '',
    },
    'pnzzdgy7': {
      'pt': 'LEVANTAR',
      'en': '',
    },
    '56eotr14': {
      'pt': 'FALAR',
      'en': '',
    },
    'vmet6bx8': {
      'pt': 'ESPERAR',
      'en': '',
    },
    '7ioppyw0': {
      'pt': 'LAMBER',
      'en': '',
    },
    'ehiyn05i': {
      'pt': 'DAR',
      'en': '',
    },
    'k6sx6mqw': {
      'pt': 'SEGURAR',
      'en': '',
    },
    'bgjatwse': {
      'pt': '',
      'en': '',
    },
  },
  // board_perguntas
  {
    '1pmls9nd': {
      'pt': 'Configurações',
      'en': '',
    },
    'g6r0d1nj': {
      'pt': 'PODE ME AJUDAR ?',
      'en': '',
    },
    '9vx1zrrh': {
      'pt': 'POSSO BRINCAR ?',
      'en': '',
    },
    'wl4497ec': {
      'pt': 'POSSO IR AO BANHEIRO ?',
      'en': '',
    },
    'e9wyv6nt': {
      'pt': 'POSSO BEBER ÁGUA ?',
      'en': '',
    },
    'k27cpd9j': {
      'pt': 'POSSO COMER ISSO ?',
      'en': '',
    },
    '2ra9teik': {
      'pt': 'POSSO JOGAR ?',
      'en': '',
    },
    's9ia39r6': {
      'pt': 'POSSO ASSITIR TV ?',
      'en': '',
    },
    'o9lkmcdq': {
      'pt': 'POSSO DORMIR ?',
      'en': '',
    },
    'z23r8df5': {
      'pt': 'POSSO TOMAR BANHO ?',
      'en': '',
    },
    '5g6tpy4h': {
      'pt': 'O QUE É ISSO ?',
      'en': '',
    },
    'sbrq653t': {
      'pt': 'ONDE VAMOS ?',
      'en': '',
    },
    'm66nuezr': {
      'pt': 'QUEM É ?',
      'en': '',
    },
    'vwjz20g1': {
      'pt': 'QUAL O SEU NOME ?',
      'en': '',
    },
    'rg2y6cu8': {
      'pt': 'ONDE ESTÁ ?',
      'en': '',
    },
    'k8zncw3i': {
      'pt': 'QUANDO É ?',
      'en': '',
    },
    'hh44z6bj': {
      'pt': 'OQUE VOCÊ FEZ ?',
      'en': '',
    },
    'j4m3gqi3': {
      'pt': 'O QUE VOCÊ DISSE ?',
      'en': '',
    },
    '8j1rp7zl': {
      'pt': 'LIMPAR',
      'en': '',
    },
    'jijtasvs': {
      'pt': 'VOLTAR',
      'en': '',
    },
    '56jzd8qo': {
      'pt': 'PLAY',
      'en': '',
    },
    'qqhp0fcv': {
      'pt': 'PARAR',
      'en': '',
    },
    'cfcyzyl8': {
      'pt': 'ANTERIOR',
      'en': '',
    },
    'wrnmwthy': {
      'pt': 'PRANCHAS CAA',
      'en': '',
    },
    'xig2hmfg': {
      'pt': 'PODE ME AJUDAR ?',
      'en': '',
    },
    'oq7mvutz': {
      'pt': 'POSSO BRINCAR ?',
      'en': '',
    },
    'vwm10nb3': {
      'pt': 'POSSO IR AO BANHEIRO ?',
      'en': '',
    },
    '3f44cgrc': {
      'pt': 'POSSO BEBER ÁGUA ?',
      'en': '',
    },
    'nlepb1ld': {
      'pt': 'POSSO JOGAR ?',
      'en': '',
    },
    'h2owueyy': {
      'pt': 'POSSO ASSISTIR TV ?',
      'en': '',
    },
    'uixd9n2a': {
      'pt': 'POSSO DORMIR ?',
      'en': '',
    },
    '46ttfbas': {
      'pt': 'POSSO TOMAR BANHO ?',
      'en': '',
    },
    'onjyu96e': {
      'pt': 'ONDE VAMOS ?',
      'en': '',
    },
    '20znk07y': {
      'pt': 'QUEM É ?',
      'en': '',
    },
    'yvsath7m': {
      'pt': 'QUAL O SEU NOME ?',
      'en': '',
    },
    '518arsx9': {
      'pt': 'ONDE ESTÁ ?',
      'en': '',
    },
    'alj6svpa': {
      'pt': 'QUANDO É ?',
      'en': '',
    },
    '198ybqam': {
      'pt': 'O QUE VOCÊ FEZ ?',
      'en': '',
    },
    '253ia1nz': {
      'pt': 'O QUE VOCÊ DISSE ?',
      'en': '',
    },
    'u7n1lvjo': {
      'pt': '',
      'en': '',
    },
  },
  // board_tempo
  {
    '00zlra0q': {
      'pt': 'Configurações',
      'en': '',
    },
    '5tjfwgkq': {
      'pt': 'AGORA',
      'en': '',
    },
    '7kh2l2wm': {
      'pt': 'DEPOIS',
      'en': '',
    },
    'o55tw882': {
      'pt': 'QUE HORAS SÃO ?',
      'en': '',
    },
    'mryuw0jh': {
      'pt': 'DIA',
      'en': '',
    },
    'tzfbixtt': {
      'pt': 'NOITE',
      'en': '',
    },
    'o23m3glb': {
      'pt': 'TARDE',
      'en': '',
    },
    '40inixtv': {
      'pt': 'AMANHÃ',
      'en': '',
    },
    'fouj15zt': {
      'pt': 'HOJE',
      'en': '',
    },
    '9h7d8qjl': {
      'pt': 'ONTEM',
      'en': '',
    },
    'gfzctrx9': {
      'pt': 'FIM DE SEMANA',
      'en': '',
    },
    'uz1wot73': {
      'pt': 'ESSA SEMANA',
      'en': '',
    },
    'o9ky4coh': {
      'pt': 'QUANTOS DIAS ?',
      'en': '',
    },
    '0t836o3b': {
      'pt': 'BOM DIA',
      'en': '',
    },
    'rpaxqfed': {
      'pt': 'BOA NOITE',
      'en': '',
    },
    'wlqosmxe': {
      'pt': 'BOA TARDE',
      'en': '',
    },
    'pq7a3l3q': {
      'pt': 'MUITO TARDE',
      'en': '',
    },
    'znd317ug': {
      'pt': 'ACORDAR CEDO',
      'en': '',
    },
    'aotinqp3': {
      'pt': 'LIMPAR',
      'en': '',
    },
    'm0or4onv': {
      'pt': 'VOLTAR',
      'en': '',
    },
    '8tzole8e': {
      'pt': 'PLAY',
      'en': '',
    },
    '770v6gbw': {
      'pt': 'PARAR',
      'en': '',
    },
    'pfnpbntl': {
      'pt': 'PARAR',
      'en': '',
    },
    'zuaa4c3g': {
      'pt': 'PRANCHAS CAA',
      'en': '',
    },
    'w13z8emo': {
      'pt': 'AGORA',
      'en': '',
    },
    'mv1d5h4j': {
      'pt': 'DEPOIS',
      'en': '',
    },
    '2623hc8z': {
      'pt': 'QUE HORAS SÃO ?',
      'en': '',
    },
    'pxul3siu': {
      'pt': 'DIA',
      'en': '',
    },
    '50285se4': {
      'pt': 'NOITE',
      'en': '',
    },
    'qh6dv3jy': {
      'pt': 'TARDE',
      'en': '',
    },
    'nvvin9ns': {
      'pt': 'AMANHÃ',
      'en': '',
    },
    'mx7vld63': {
      'pt': 'HOJE',
      'en': '',
    },
    '2vmf5jcj': {
      'pt': 'ONTEM',
      'en': '',
    },
    'n93rkj64': {
      'pt': 'ESSA SEMANA',
      'en': '',
    },
    '2ssydgja': {
      'pt': 'FIM DE SEMANA',
      'en': '',
    },
    'zma0klpv': {
      'pt': 'QUNATOS DIAS ?',
      'en': '',
    },
    'wjlif7wu': {
      'pt': 'BOM DIA !',
      'en': '',
    },
    'icfiov7c': {
      'pt': 'BOA NOITE !',
      'en': '',
    },
    'dlm6fvap': {
      'pt': 'BOA TARDE !',
      'en': '',
    },
    'bo3ii3pq': {
      'pt': 'MUITO TARDE',
      'en': '',
    },
    'kqe8kszq': {
      'pt': 'ACORDAR CEDO',
      'en': '',
    },
    '8uuin41f': {
      'pt': 'Prancha geral',
      'en': '',
    },
  },
  // editar-perfil
  {
    '5jbnk3h1': {
      'pt': '',
      'en': '',
    },
    'jbf8husm': {
      'pt': 'Salvar',
      'en': '',
    },
  },
  // mudar-senha-email
  {
    'x1zayx52': {
      'pt': 'Alterando email e senha',
      'en': '',
    },
    '6aikidd8': {
      'pt': 'Digite outro Email',
      'en': '',
    },
    '38ba8kdm': {
      'pt':
          'Após apertar o botão um email será enviado, para caso desejar alterar a senha',
      'en': '',
    },
    'm0i14jkc': {
      'pt': 'Salvar',
      'en': '',
    },
  },
  // autenticacao-historico
  {
    'hznl6cie': {
      'pt': 'Coloque os seus dados para acessar o histórico',
      'en': '',
    },
    'paawng53': {
      'pt': 'Digite o seu Email',
      'en': '',
    },
    'dfn638oo': {
      'pt': 'Digite a sua senha',
      'en': '',
    },
    'f1ji9trp': {
      'pt': 'Entrar',
      'en': '',
    },
    'cqq29a0b': {
      'pt': 'Autenticação para entrar no histórico',
      'en': '',
    },
  },
  // calendario
  {
    'iqvbhpg4': {
      'pt': 'Button',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'pnx0jqt8': {
      'pt': '',
      'en': '',
    },
    'deqcwnwe': {
      'pt': '',
      'en': '',
    },
    '3d04l1rt': {
      'pt': '',
      'en': '',
    },
    'nggs1jn9': {
      'pt': 'Erro de autenticação',
      'en': '',
    },
    'egvy2tfn': {
      'pt': 'Email de redefinição de senha enviado ',
      'en': '',
    },
    '6szos23p': {
      'pt': 'Email obrigatório!',
      'en': '',
    },
    '59igo656': {
      'pt': '',
      'en': '',
    },
    '17398soh': {
      'pt': 'A senha esta incorreta ',
      'en': '',
    },
    'qffkocpm': {
      'pt': '',
      'en': '',
    },
    'j3su83pk': {
      'pt': '',
      'en': '',
    },
    'xgnaudfi': {
      'pt': '',
      'en': '',
    },
    'v5afnyr7': {
      'pt': '',
      'en': '',
    },
    'wan0qgmr': {
      'pt': 'Este email já esta sendo usado por outra conta',
      'en': '',
    },
    'f8124jcq': {
      'pt': 'As credênciais estão incorretas',
      'en': '',
    },
    '89632erw': {
      'pt': '',
      'en': '',
    },
    '0w69w6my': {
      'pt': '',
      'en': '',
    },
    'ybby8ffr': {
      'pt': '',
      'en': '',
    },
    '0ew9a61d': {
      'pt': '',
      'en': '',
    },
    'x1y8un66': {
      'pt': '',
      'en': '',
    },
    '3rrs7w0b': {
      'pt': '',
      'en': '',
    },
    'nlvzoihp': {
      'pt': '',
      'en': '',
    },
    '8uffr0oi': {
      'pt': '',
      'en': '',
    },
    'mavil2f1': {
      'pt': '',
      'en': '',
    },
    'cbpg7etw': {
      'pt': '',
      'en': '',
    },
    'zly6u4q6': {
      'pt': '',
      'en': '',
    },
    '7lptikke': {
      'pt': '',
      'en': '',
    },
    'ex2m8hgn': {
      'pt': '',
      'en': '',
    },
    'jfuosj6f': {
      'pt': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
