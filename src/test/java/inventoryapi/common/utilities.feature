Feature: Commonly used functions
  Scenario:
    * def Product =
    """
    function() {
        var uuid = java.util.UUID.randomUUID().toString().substring(0, 8);
        var id = Math.floor(Math.random() * 1000);
        var name = 'DynamicPizza-' + uuid;
        var image = 'dynamic.png';
        var price = '$' + (10 + Math.floor(Math.random() * 10));

        return {
            id: id,
            name: name,
            image: image,
            price: price
        };
    }
    """