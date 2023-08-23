class EndPoints {
  /// Current Api version
  static const String _apiVersion = '/api';

  /// Auth
  static const String _baseAuth = "$_apiVersion/auth";

  static const String register = "$_baseAuth/register";
  static const String login = "$_baseAuth/login";
  static const String loginWithToken = "$_baseAuth/login_with_token";
  static const String logout = "$_baseAuth/logout";

  /// Chat
  static const String _baseChat = "$_apiVersion/chat";

  static const String getChats = _baseChat;
  static const String getSingleChat = "$_baseChat/";
  static const String create = _baseChat;

  /// Chat message
  static const String _baseChatMessage = "$_apiVersion/chat_message";

  static const String getChatMessage = _baseChatMessage;
  static const String createChatMessage = _baseChatMessage;

  /// User
  static const String getUsers = "$_apiVersion/user";
}
