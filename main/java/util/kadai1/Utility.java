package util.kadai1;

public class Utility {

    /**
     * 引数に指定した文字列がnull、または空文字かを判定します。
     * @param str
     * @return
     */
    public static boolean isNullOrEmpty(String str) {
        if(str == null || str.isEmpty()) {
            return true;
        }else {
            return false;
        }
    }

    /**
     * 石の残数に応じて表示する"●"用のhtmlソースを生成します
     * @return
     */
    // todo:ここにgetStoneDisplayHtmlメソッドを定義
    public static String getStoneDisplayHtml(int num) {
    	String returnStr = "";
    	for (int i = 0; i < num; i++) {
    		returnStr += "●";
    		if (i % 10 == 9) {
    			returnStr += "<br>";
    		}
    	}
    	return returnStr;
    }
    
    public static String getStoneDisplayHtml(int num, String str) {
    	String returnStr = "";
    	for (int i = 0; i < num; i++) {
    		returnStr += str;
    		if (i % 10 == 9) {
    			returnStr += "<br>";
    		}
    	}
    	return returnStr;
    }
}
