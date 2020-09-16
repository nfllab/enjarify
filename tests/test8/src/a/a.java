package a;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;

public class a extends Activity
{
    public static void print(String msg)
    {
        Log.e("minimalFOO", msg);
    }

    public static boolean largerThanThree(int a)
    {
        return a > 3;
    }

    @Override
    public void onCreate(Bundle b) {
        super.onCreate(b);
        print(String.valueOf(largerThanThree(2)));
        print(String.valueOf(largerThanThree(5)));
    }
}
