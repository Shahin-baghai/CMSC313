#include <stdio.h>
#include <stdlib.h>

// Abstract class Vehicle
/* Vehicle "base class" implemented using a struct with function pointers */
typedef struct Vehicle {
    void (*accelerate)(void);
    void (*brake)(void);
} Vehicle;


void car_accelerate() {
    printf("Car: Pressing gas pedal...\n");
}

void car_brake() {
    printf("Car: Applying brakes...\n");
}

void startEngine() {
    printf("Engine started!\n");
}


Vehicle* createCar() {
    Vehicle* v = (Vehicle*) malloc(sizeof(Vehicle));
    v->accelerate = car_accelerate;
    v->brake = car_brake;
    return v;
}


int main() {

    /* “Vehicle* myCar = new Car();” in C++ */
    Vehicle* myCar = createCar();

    startEngine();
    myCar->accelerate();
    myCar->brake();

    free(myCar);
    return 0;
}
