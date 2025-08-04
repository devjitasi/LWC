public class MyDateFormat {
    public  static void fn(){
    	String FirstName = UserInfo.getFirstName();//Returns the context user's first name.
System.Debug('FirstName-' + FirstName);
String LastName = UserInfo.getLastName();//Returns the context user's last name.
System.Debug('LastName-' + LastName);
String Name = UserInfo.getName();//Returns the context user's full name.
System.Debug('Name-' + Name);
String UserEmail = UserInfo.getUserEmail();//Returns the current user’s email address.
System.Debug('UserEmail-' + UserEmail);
String UserType = UserInfo.getUserType();//Returns the context user's type.
System.Debug('UserType-' + UserType);
String UserId = UserInfo.getUserId();//Returns the context user's ID.
System.Debug('UserId-' + UserId);
String UserName = UserInfo.getUserName();//Returns the context user's login name.
System.Debug('UserName-' + UserName);
String ProfileId = UserInfo.getProfileId();//Returns the context user's profile ID.
System.Debug('ProfileId-' + ProfileId);
String UserRoleId = UserInfo.getUserRoleId();//Returns the context user's role ID.
System.Debug('UserRoleId-' + UserRoleId);
String SessionId = UserInfo.getSessionId();//Returns the session ID for the current session.
System.Debug('SessionId-' + SessionId);
TimeZone tz = UserInfo.getTimeZone();//Returns the current user’s local time zone.
System.Debug('TimeZone-' + tz);
String DefaultCurrency = UserInfo.getDefaultCurrency();//Returns the context user's default currency code for multiple currency organizations or the organization's currency code for single currency organizations.
System.Debug('DefaultCurrency-' + DefaultCurrency);
String Language = UserInfo.getLanguage();//Returns the context user's language.
System.Debug('Language-' + Language);
String Locale = UserInfo.getLocale();//Returns the context user's locale.
System.Debug('Locale-' + Locale);
String OrganizationId = UserInfo.getOrganizationId();//Returns the context organization's ID.
System.Debug('OrganizationId-' + OrganizationId);
String OrganizationName = UserInfo.getOrganizationName();//Returns the context organization's company name.
System.Debug('OrganizationName-' + OrganizationName);
        }
}