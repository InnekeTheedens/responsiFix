import Firebase from 'firebase'
 let config = {
    apiKey: "AIzaSyBd8rySemEOm19BOmehTG6vHfVeP3tagdk",
    authDomain: "inneke-165410196-219707.firebaseapp.com",
    databaseURL: "https://inneke-165410196-219707.firebaseio.com",
    projectId: "inneke-165410196-219707",
    storageBucket: "inneke-165410196-219707.appspot.com",
    messagingSenderId: "541644813551"
  };
let app = Firebase.initializeApp(config)
export const db = app.database()