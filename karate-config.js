function fn() {
  var config = { baseUrl: 'http://localhost:3100/api'};

  var utils = karate.callSingle('classpath:inventoryapi/common/utilities.feature');
  config.product = utils.Product();
  return config;
}
