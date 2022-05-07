package entity;

/**
 * Userクラス
 */
public class User {

    // フィールド
	public String userID;
	public String userName;
	public int age;

    /**
     * コンストラクタ(引数なし)
     */
	public User() {
	}

    /**
     * コンストラクタ(引数3つ)
     */
	public User(String userID, String userName, int age) {
		this.userID = userID;
		this.userName = userName;
		this.age = age;
	}

    /**
     * ユーザー情報を取得するメソッド
     */
	public String returnUserInfo() {
		String message = "";
		message += "ユーザーID: " + this.userID;
		message += "、ユーザ名: " + this.userName;
		message += "、年齢: " + this.age;
		return message;
	}

}
