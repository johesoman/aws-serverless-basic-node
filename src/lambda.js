"use strict";

exports.handler = async function respond(event) {
  console.log(event);

  return {
    statusCode: 200,
    body: JSON.stringify({
      method: event.httpMethod,
      path: event.path,
      body: event.body
    })
  };
};
