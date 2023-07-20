public class NaturesPalette{

	// constants representing the colors of nature
	public static final int SKYBLUE = 0x87ceeb;
	public static final int FORESTGREEN = 0x228b22;
	public static final int RICHBROWN = 0x964b00;
	public static final int OCEANBLUE = 0x4169e1;
	public static final int CORALRED = 0xff7f50;
	public static final int MOUNTAINPURPLE = 0x9a32cd;
	public static final int DEEPSKYBLUE = 0x00bfff;
	public static final int SUNSETORANGE = 0xffa500;
	public static final int OLIVEGREEN = 0x9acd32;
	public static final int SEAGREEN = 0x2e8b57;
	public static final int ROYALBLUE = 0x4169e1;
	public static final int GOLDENROD = 0xdaa520;
	public static final int SALMON = 0xfa8072;
	public static final int LAVENDER = 0xe6e6fa;

	public static void main(String[] args){
		int[] naturesPalette = new int[15];
		naturesPalette[0] = SKYBLUE;
		naturesPalette[1] = FORESTGREEN;
		naturesPalette[2] = RICHBROWN;
		naturesPalette[3] = OCEANBLUE;
		naturesPalette[4] = CORALRED;
		naturesPalette[5] = MOUNTAINPURPLE;
		naturesPalette[6] = DEEPSKYBLUE;
		naturesPalette[7] = SUNSETORANGE;
		naturesPalette[8] = OLIVEGREEN;
		naturesPalette[9] = SEAGREEN;
		naturesPalette[10] = ROYALBLUE;
		naturesPalette[11] = GOLDENROD;
		naturesPalette[12] = SALMON;
		naturesPalette[13] = LAVENDER;
		displayColors(naturesPalette);
	}

	public static void displayColors(int[] naturesPalette){
		for(int i = 0; i < naturesPalette.length; i++){
			System.out.println("Color " + (i + 1) + ": " + Integer.toHexString(naturesPalette[i]));
		}
	}
}