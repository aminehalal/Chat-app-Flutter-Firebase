/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const functions = require("firebase-functions");

// Example of using onRequest
const onRequest = functions.https.onRequest((req, res) => {
  res.send("Hello from Firebase!");
});

// Export the function so Firebase can use it
exports.onRequest = onRequest;

// If you don't need them, remove this line:
// const onRequest = functions.https.onRequest;
// const logger = functions.logger;


// const {onRequest} = require("firebase-functions/v2/https");
// const logger = require("firebase-functions/logger");

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

// exports.helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
