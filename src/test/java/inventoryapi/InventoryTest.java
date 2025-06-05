package inventoryapi;

import com.intuit.karate.junit5.Karate;

public class InventoryTest {

    @Karate.Test
    Karate testInventoryFeature() {
        return Karate.run("classpath:inventoryapi")
                     .tags("@inventory");
    }
}
