part of constants;

class AppStrings {
  AppStrings._();

  static final AppStrings _instance = AppStrings._();

  factory AppStrings() => _instance;

  final String lbSearch = '詳細条件を指定して検索する';
  final String lbCLock = '最近ログインしたユーザーを表示';
  final String lbMonarchy = 'ユーザーランキングを表示';
  final String lbHome = 'ホーム';
  final String lbSpeaker = 'ユーザー告知';
  final String lbAccount = 'マイページ';
  final String lbEvent = 'イベント\nコミュニティ';
  final String lbMember = '会員一覧';
  final String lbMessage = 'メッセージ';
}
