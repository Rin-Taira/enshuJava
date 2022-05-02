package util.kadai2;

public class MainTask {

	/**
	 * 文字列配列を数値配列に変換する。
	 */
	public static int[] toIntArray(String[] array) {
		int[] intArray = new int[array.length];
		for (int i = 0; i < array.length; i++) {
			intArray[i] = Integer.parseInt(array[i]);
		}
		return intArray;
	}

	/**
	 * ヒープソートのアルゴリズムを用いて昇順に並べ替える。
	 */
	public static void heapSort(int[] array) {
		// TODO: 発展課題のメイン実装
		int tempBox;
		for (int i = (array.length - 2) / 2 * 2 + 1; i > 0; i -= 2) {
			if(array[i] > array[(i - 1) / 2]) {
				tempBox = array[i];
				array[i] = array[(i - 1) / 2];
				array[(i - 1) / 2] = tempBox;
			}
			if((array.length >= i + 1) && (array[i + 1] > array[(i - 1) / 2])) {
				tempBox = array[i + 1];
				array[i + 1] = array[(i - 1) / 2];
				array[(i - 1) / 2] = tempBox;
			}
		}
	}
}