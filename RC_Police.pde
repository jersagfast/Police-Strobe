//RC "police" style LED strobe flash pattern
// 2011 - Jeremy Saglimbeni - thecustomgeek.com

int sidered = 2;
int barblu = 3;
int sideblu = 4;
int barred = 5;
int corner1blu = 6;
int corner1red = 9;
int corner2blu = 10;
int corner2red = 11;
int btn1 = 16;
int btn2 = 17;
int btn1v = 0;
int btn2v = 0;
int mode = 0;
int value = 0;
int i = 0;
int l = 0;
void setup() {
  Serial.begin(9600);
  pinMode(sidered, OUTPUT);
  pinMode(barblu, OUTPUT);
  pinMode(sideblu, OUTPUT);
  pinMode(barred, OUTPUT);
  pinMode(corner1blu, OUTPUT);
  pinMode(corner1red, OUTPUT);
  pinMode(corner2blu, OUTPUT);
  pinMode(corner2red, OUTPUT);
  pinMode(btn1, INPUT);
  pinMode(btn2, INPUT);
  digitalWrite(btn1, HIGH);
  digitalWrite(btn2, HIGH);
}
void loop() {

  check();
  if (mode == 0) {
    analogWrite(barblu, 25);
    analogWrite(corner1red, 25);
    analogWrite(corner2blu, 25);
    analogWrite(barred, 25);
    analogWrite(corner1blu, 25);
    analogWrite(corner2red, 25);
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 15; i+=1) {

      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);
      delay (25);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      delay (25);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);
      delay (25);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (25);
    }
  }
  check();
  if (mode == 1) {
    for (l = 0 ; l <= 1; l+=1) {
      for (i = 0 ; i <= 1; i+=1) {
        digitalWrite(sideblu, HIGH); 
        for(value = 0 ; value <= 255; value+=5)
        { 
          analogWrite(barred, value);
          analogWrite(corner1blu, value);
          analogWrite(corner2red, value);
          delay(1);
        } 
        for(value = 255; value >=0; value-=1)
        { 
          analogWrite(barred, value);
          analogWrite(corner1blu, value);
          analogWrite(corner2red, value);
          delay(1); 
        }
      }
      digitalWrite(sideblu, LOW);
      digitalWrite(sidered, HIGH);
      for (i = 0 ; i <= 1; i+=1) {
        for(value = 0 ; value <= 255; value+=5)
        { 
          analogWrite(barblu, value);
          analogWrite(corner1red, value);
          analogWrite(corner2blu, value);
          delay(1);
        } 
        for(value = 255; value >=0; value-=1)
        { 
          analogWrite(barblu, value);
          analogWrite(corner1red, value);
          analogWrite(corner2blu, value); 
          delay(1); 
        }
      }
      digitalWrite(sidered, LOW);
    }
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 7; i+=1) {
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);  
      delay (200);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);
      delay (200);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
    }
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 3; i+=1) {

      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);  
      delay (500);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (25);
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);
      delay (25);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (25);
    }
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 15; i+=1) {
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);  
      delay (50);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);
      delay (50);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
    }
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 3; i+=1) {
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);  
      delay (35);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      delay (35);
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);  
      delay (35);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      delay (35);
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);  
      delay (35);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      delay (35);
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);  
      delay (350);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);  
      delay (35);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (35);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);  
      delay (35);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (35);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);  
      delay (35);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (35);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH);  
      delay (350);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
    }
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 15; i+=1) {
      digitalWrite(sidered, HIGH);
      digitalWrite(barblu, HIGH);
      digitalWrite(corner1red, HIGH);
      digitalWrite(corner2blu, HIGH);
      digitalWrite(sideblu, HIGH);
      digitalWrite(barred, HIGH);
      digitalWrite(corner1blu, HIGH);
      digitalWrite(corner2red, HIGH); 
      delay (50);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, LOW);
      delay (50);
    }
  }
  check();
  if (mode == 1) {
    for (l = 0 ; l <= 3; l+=1) {
      for (i = 0 ; i <= 3; i+=1) {
        digitalWrite(sidered, HIGH);
        digitalWrite(barblu, HIGH);
        digitalWrite(corner1red, HIGH);
        digitalWrite(corner2blu, HIGH);
        delay(50);
        digitalWrite(sidered, LOW);
        digitalWrite(barblu, LOW);
        digitalWrite(corner1red, LOW);
        digitalWrite(corner2blu, LOW);
        delay(50);
      }
      for (i = 0 ; i <= 3; i+=1) {
        digitalWrite(sideblu, HIGH);
        digitalWrite(barred, HIGH);
        digitalWrite(corner1blu, HIGH);
        digitalWrite(corner2red, HIGH);
        delay(50);
        digitalWrite(sideblu, LOW);
        digitalWrite(barred, LOW);
        digitalWrite(corner1blu, LOW);
        digitalWrite(corner2red, LOW);
        delay(50);
      }
    }
  }
  check();
  if (mode == 1) {
    for (i = 0 ; i <= 7; i+=1) {
      digitalWrite(sidered, HIGH);
      delay(35);
      digitalWrite(sidered, LOW);
      digitalWrite(barblu, HIGH);
      delay(35);
      digitalWrite(barblu, LOW);
      digitalWrite(corner1red, HIGH);
      delay(35);
      digitalWrite(corner1red, LOW);
      digitalWrite(corner2blu, HIGH);
      delay(35);
      digitalWrite(corner2blu, LOW);
      digitalWrite(sideblu, HIGH);
      delay(35);
      digitalWrite(sideblu, LOW);
      digitalWrite(barred, HIGH);
      delay(35);
      digitalWrite(barred, LOW);
      digitalWrite(corner1blu, HIGH);
      delay(35);
      digitalWrite(corner1blu, LOW);
      digitalWrite(corner2red, HIGH); 
      delay(35);
      digitalWrite(corner2red, LOW);
      delay(35);
    }
  }
  check();
   if (mode == 2) {
    digitalWrite(sidered, HIGH);
    digitalWrite(barblu, HIGH);
    digitalWrite(corner1red, HIGH);
    digitalWrite(corner2blu, HIGH);  
    delay (200);
    digitalWrite(sidered, LOW);
    digitalWrite(barblu, LOW);
    digitalWrite(corner1red, LOW);
    digitalWrite(corner2blu, LOW);
    digitalWrite(sideblu, HIGH);
    digitalWrite(barred, HIGH);
    digitalWrite(corner1blu, HIGH);
    digitalWrite(corner2red, HIGH);
    delay (200);
    digitalWrite(sideblu, LOW);
    digitalWrite(barred, LOW);
    digitalWrite(corner1blu, LOW);
    digitalWrite(corner2red, LOW);
  }
  check();
  if (mode == 3) {
    for (i = 0 ; i <= 1; i+=1) {
      digitalWrite(sideblu, HIGH); 
      for(value = 0 ; value <= 255; value+=5) { 
        analogWrite(barred, value);
        analogWrite(corner1blu, value);
        analogWrite(corner2red, value);
        delay(1);
      } 
      for(value = 255; value >=0; value-=1) { 
        analogWrite(barred, value);
        analogWrite(corner1blu, value);
        analogWrite(corner2red, value);
        delay(1); 
      }
    }
    digitalWrite(sideblu, LOW);
    digitalWrite(sidered, HIGH);
    for (i = 0 ; i <= 1; i+=1) {
      for(value = 0 ; value <= 255; value+=5) { 
        analogWrite(barblu, value);
        analogWrite(corner1red, value);
        analogWrite(corner2blu, value);
        delay(1);
      } 
      for(value = 255; value >=0; value-=1) { 
        analogWrite(barblu, value);
        analogWrite(corner1red, value);
        analogWrite(corner2blu, value); 
        delay(1); 
      }
    }
    digitalWrite(sidered, LOW);
  }
}

void check() {
  btn1v = digitalRead(btn1);
  if (btn1v == LOW) {
    mode = mode - 1;
    if (mode <= 0) {
      mode = 0;
    }
  }
  btn2v = digitalRead(btn2);


  if (btn2v == LOW) {
    mode = mode + 1;
    if (mode >= 3) {
      mode = 3;
    }
  }
  /*
Serial.print("Mode:");
   Serial.print(mode);
   Serial.print("   btn1v:");
   Serial.print(btn1v);
   Serial.print("   btn2v:");
   Serial.println(btn2v);
   */
}


