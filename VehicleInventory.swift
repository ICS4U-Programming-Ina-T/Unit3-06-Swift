//
// VehicleInventory.swift
//
// Created by Ina Tolo
// Created on 2022-5-16
// Version 1.0
// Copyright (c) 2022 Ina Tolo. All rights reserved.
//
// The VehicleInventory program implements an application
// that creates two vehicles and calls separate classes
// to properly print the information and alter the speed.

class Vehicle {
    // properties
    var plateNum: String
    var colour: String
    var doorNum: Int
    var speed: Int
    var maxSpeed: Int

    init(plateNum: String, colour: String, doorNum: Int, speed: Int, maxSpeed: Int) {
        // referncing objects passed in
        self.plateNum = plateNum
        self.colour = colour
        self.doorNum = doorNum
        self.speed = speed
        self.maxSpeed = maxSpeed
    }

    // adds acceleration to the current speed
    internal func accelerate(accelNum: Int) {
        // adds acceleration
        let newSpeed: Int = speed + accelNum
        speed = newSpeed

        // checks if speed is greater than max speed
        if speed > maxSpeed {
            speed = maxSpeed
        }

        print("Vehicle has accelerated \(accelNum) km/h.")
    }

    // alters the speed by applying brakes
    internal func brake(brakeNum: Int) {
        // decreases amount of current speed
        let newSpeed: Int = speed - brakeNum
        speed = newSpeed

        // checks to make sure speed is not negative
        if speed < 0 {
            speed = 0
        }

        print("A brake of \(brakeNum) km/h has been applied.")
    }

    // tells the user the current speed
    internal func getSpeed() {
        print("Current speed: \(speed) km/h")
    }

    // tells the user what the max speed of a vehicle is
    internal func getMaxSpeed() {
        print("Max speed: \(maxSpeed) km/h")
    }

    // tells user information and characteristics about a vehicle
    internal func getInfo() {
        // applies appropriate format for information
        print("License plate: \(plateNum)")
        print("Colour: \(colour)")
        print("Number of doors: \(doorNum)")
        print("Speed: \(speed) km/h")
        print("Max speed: \(maxSpeed) km/h")
    }
}

// creating vehicles one and two
var vehicleOne = Vehicle(plateNum: "IJT 058", colour: "White", doorNum: 4, speed: 0, maxSpeed: 120)
var vehicleTwo = Vehicle(plateNum: "BBV 4389", colour: "Navy Blue", doorNum: 2, speed: 0, maxSpeed: 260)

// declaring variables
var listOfVehicles: [Vehicle] = []

// adds vehicles to array
listOfVehicles.append(vehicleOne)
listOfVehicles.append(vehicleTwo)

// calls appropriate methods for first vehicle
print("Vehicle #1 Adjustments:")
listOfVehicles[0].getMaxSpeed()
listOfVehicles[0].accelerate(accelNum: 30)
listOfVehicles[0].accelerate(accelNum: 65)
listOfVehicles[0].getSpeed()
listOfVehicles[0].brake(brakeNum: 25)
listOfVehicles[0].accelerate(accelNum: 15)
listOfVehicles[0].brake(brakeNum: 1)
listOfVehicles[0].getSpeed()

print()
print("Vehicle #1:")

// calls method in vehicle class to print info
listOfVehicles[0].getInfo()

print()
print("Vehicle #2 Adjustments:")

// calls appropriate methods for second vehicle
listOfVehicles[1].getMaxSpeed()
listOfVehicles[1].brake(brakeNum: 13)
listOfVehicles[1].accelerate(accelNum: 45)
listOfVehicles[1].brake(brakeNum: 26)
listOfVehicles[1].getSpeed()
listOfVehicles[1].accelerate(accelNum: 22)
listOfVehicles[1].brake(brakeNum: 4)
listOfVehicles[1].getSpeed()
listOfVehicles[1].accelerate(accelNum: 223)

print()
print("Vehicle #2:")

// calls method in vehicle class to print info
listOfVehicles[1].getInfo()
