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
// properly print information and alter the speed.

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

    internal func accelerate(accelNum: Int) {
        let newSpeed: Int = speed + accelNum
        speed = newSpeed

        if speed > maxSpeed {
            speed = maxSpeed
        }

        print("Acceleration has been inputed.")
    }

    internal func brake(brakeNum: Int) {
        let newSpeed: Int = speed - brakeNum
        speed = newSpeed

        if speed < 0 {
            speed = 0
        }

        print("Break has been inputed.")
    }

    internal func getSpeed() {
        print("Current speed: \(speed)")
    }

    internal func getMaxSpeed() {
        print("Max speed: \(maxSpeed)")
        
    }

    internal func getInfo() {
        print("License plate: \(plateNum)")
        print("Colour: \(colour)")
        print("Number of doors: \(doorNum)")
        print("Speed: \(speed)")
        print("Max speed: \(maxSpeed)")
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

// calls appropriate methods
print("Vehicle #1 Adjustments:")
listOfVehicles[0].accelerate(accelNum: 30)
listOfVehicles[0].brake(brakeNum: 26)
listOfVehicles[0].getSpeed()
listOfVehicles[0].getMaxSpeed()

print()
print("Vehicle #1:")
listOfVehicles[0].getInfo()


print()
print("Vehicle #2 Adjustments:")
// calls appropriate methods for second vehicle
listOfVehicles[1].accelerate(accelNum: 65)
listOfVehicles[1].brake(brakeNum: 26)
listOfVehicles[1].getSpeed()
listOfVehicles[1].getMaxSpeed()

print()
print("Vehicle #2:")
listOfVehicles[1].getInfo()
