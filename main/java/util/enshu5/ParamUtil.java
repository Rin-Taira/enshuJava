package util.enshu5;

/**
 * メソッドをまとめたParamUtilクラス
 */
public class ParamUtil {

    /**
     * ポイント計算
     */
	public static int getPoint(int amount) {
		double point = amount * 0.01;
		return (int)point;
	}

    /**
     * ポイント計算(ランクあり)
     */
	public static int getPoint(int amount, int flag) {
		double point;
		if (flag == 1) {
			point = amount * 0.02;
		} else {
			point = amount * 0.03;
		}
		return (int)point;
	}

    /**
     * 引数に指定した文字列がnull、または空文字かを判定
     */
	public static boolean isNullOrEmpty(String str) {
        // 引数の値がnull、または空文字の場合は、true
        // それ以外の場合は、falseを返すように処理を修正する
    	if (str == null || "".equals(str)) {
    		return true;
    	}
        return false;
	}

}
