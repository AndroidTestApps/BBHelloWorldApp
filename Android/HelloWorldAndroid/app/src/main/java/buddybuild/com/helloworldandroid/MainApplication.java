package buddybuild.com.helloworldandroid;
import com.buddybuild.sdk.BuddyBuild;
import android.app.Application;
public class MainApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        BuddyBuild.setup(this);
    }
}
