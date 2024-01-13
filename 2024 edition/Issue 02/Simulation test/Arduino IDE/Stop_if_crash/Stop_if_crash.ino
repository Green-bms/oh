/*
 Stop If Crash simulation test circuit. 
 Heartbit signal
 First version: 13/01/2024 Sergio Ghirardelli
*/

// the setup function runs once when you press reset or power the board
void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(14, INPUT_PULLUP);
  pinMode(12, INPUT_PULLUP);
}

// the loop function runs over and over again forever
void loop() {
  bool but1 = digitalRead(12);
  bool but2 = digitalRead(14);
  if (but1 && but2) {
              digitalWrite(LED_BUILTIN, HIGH); 
              digitalWrite(5, LOW);
              delay(250);                       
              digitalWrite(LED_BUILTIN, LOW); 
              digitalWrite(5, HIGH);
              delay(250);  
              }
  else  {
         if (!but1) { digitalWrite(LED_BUILTIN, HIGH); 
                      digitalWrite(5, LOW); 
                      }
         if (!but2) { digitalWrite(LED_BUILTIN, LOW); 
                      digitalWrite(5, HIGH);
                      }
                                   
      }
}
