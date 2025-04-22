function fn() {
  var env = karate.env; // get java system property 'karate.env'
  var urlBase = ''
  var urlMockapi = ''

  karate.log('karate.env system property was:', env);



  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }



  if (env == 'dev') {
    urlBase = 'https://restful-booker.herokuapp.com';
    urlMockapi = 'https://67c8c4510acf98d07087af7d.mockapi.io';

  } else if (env == 'cert') {
    urlBase = 'https://restful-booker.herokuapp.com';
    urlMockapi = 'https://67c8c4510acf98d07087af7d.mockapi.io';
  }


var config = { // base config JSON
  env: env,
  urlBase: urlBase,
  urlMockapi: urlMockapi
  };

  return config;
}