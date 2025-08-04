public class SampleDate {
    public static void getDate(){
        System.debug('Date function');
        String firstName = UserInfo.getFirstName();
        System.debug(firstName);
        String myLocale = UserInfo.getLocale();
        System.debug(myLocale);
      Date myDate = date.newinstance(2001, 3, 21);
        System.debug(myDate);
        // In American-English locale
	date Date_formatted = date.newInstance(2001, 3, 21);
 
String dayString = Date_formatted.format();
          System.debug(dayString);
        Datetime  rightnow = DateTime.now();
        System.debug(rightnow);
String mydaterightnow = rightnow.format();
           System.debug(mydaterightnow);

        
    }
}