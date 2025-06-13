function fn() {
  karate.configure('ssl', { trustAll: true });
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);
  var config = {
    baseUrl: 'https://serverest.dev'
  };
  return config;
}
