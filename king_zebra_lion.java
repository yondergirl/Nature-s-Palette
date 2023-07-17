public class NaturesPalette {
    public static void main(String[] args) {
 
        // Create an array of colors
        String[] colors = { "Indigo", "Violet", "Blue", "Green", "Yellow", "Orange", "Red" };
 
        // Traverse the array
        int length = colors.length;
        for (int i = 0; i < length; i++) {
            // Print each color
            System.out.println(colors[i]);
        }
 
        // Iterate the elements of an array using for-each loop
        for (String color : colors) {
            System.out.println("Nature’s Palette includes " + color + " color");
        }
 
        // Call the method with an array argument
        getColorDetails(colors);
 
        // Sort an array of strings
        java.util.Arrays.sort(colors);
        System.out.println("The colors sorted in alphabetical order are:");
        for (String color : colors) {
            System.out.println(color);
        }
    }
 
    static void getColorDetails(String[] arr) {
        // Encapsulate each color along with its position
        for (int i = 0; i < arr.length; i++)
            System.out.println("Color " + (i + 1) + " in Nature’s Palette is " + arr[i]);
    }
}