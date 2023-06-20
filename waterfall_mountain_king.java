import java.awt.Color;

public class NaturePalette {
	public static Color GREEN = new Color(0, 128, 0);
	public static Color TEAL = new Color(0, 128, 128);
	public static Color OLIVE = new Color(128, 128, 0);
	public static Color LIME = new Color(0, 255, 0);
	public static Color AQUA = new Color(0, 255, 255);
	public static Color YELLOW = new Color(255, 255, 0);
	public static Color GOLDENROD = new Color(218, 165, 32);
	public static Color ORANGE = new Color(255, 165, 0);
	public static Color CORAL = new Color(255, 127, 80);
	public static Color SALMON = new Color(250, 128, 114);
	public static Color PINK = new Color(255, 192, 203);
	public static Color MAGENTA = new Color(255, 0, 255);
	public static Color PLUM = new Color(221, 160, 221);
	public static Color VIOLET = new Color(238, 130, 238);
	public static Color INDIGO = new Color(75, 0, 130);
	public static Color BLUE = new Color(0, 0, 255);
	public static Color SKYBLUE = new Color(135, 206, 235);
	public static Color SLATEBLUE = new Color(106, 90, 205);
	public static Color TURQUOISE = new Color(64, 224, 208);
	public static Color SEAGREEN = new Color(46, 139, 87);
	public static Color FORESTGREEN = new Color(34, 139, 34);
	public static Color BROWN = new Color(165, 42, 42);
	public static Color BLACK = new Color(0, 0, 0);
	public static Color GRAY = new Color(128, 128, 128);
	public static Color SILVER = new Color(192, 192, 192);
	public static Color WHITE = new Color(255, 255, 255);
	
	// Get the hexadecimal value of a color
	public static String getHexValue(Color c) {
		String hexColor = String.format("#%02x%02x%02x", c.getRed(), c.getGreen(), c.getBlue());
		return hexColor;
	}
	
	// Get the RGB value of a color
	public static String getRGBValue(Color c) {
		String rgbColor = String.format("rgb(%d, %d, %d)", c.getRed(), c.getGreen(), c.getBlue());
		return rgbColor;
	}
	
	// Get the HSL value of a color
	public static String getHSLValue(Color c) {
		int red = c.getRed();
		int green = c.getGreen();
		int blue = c.getBlue();
		
		float r = red/255f;
		float g = green/255f;
		float b = blue/255f;
		
		float max = Math.max(r, Math.max(g, b));
		float min = Math.min(r, Math.min(g, b));
		
		float h = 0, s = 0, l = (max + min) / 2;
		
		if (max != min) {
			if (l >= 0.5) {
				s = (max - min) / (2 - max - min);
			} else {
				s = (max - min) / (max + min);
			}
			
			if (max == r) {
				h = (g - b) / (max - min);
			} else if (max == g) {
				h = 2 + (b - r) / (max - min);
			} else if (max == b) {
				h = 4 + (r - g) / (max - min);
			}
		}
		
		h = (int)(h * 60);
		
		if (h < 0) {
			h += 360;
		}
		
		String hslColor = String.format("hsl(%d, %d%%, %d%%)", (int)h, (int)(s * 100), (int)(l * 100));
		return hslColor;
	}
	
	public static void main(String[] args) {
		System.out.println("Green Hexadecimal Value: " + getHexValue(GREEN));
		System.out.println("Teal RGB Value: " + getRGBValue(TEAL));
		System.out.println("Olive HSL Value: " + getHSLValue(OLIVE));
	}

}