//
//  ContentView.swift
//  Converter
//
//  Created by Adedola Owen Abaru on 03/01/2024.
//

import SwiftUI

enum ConverterMode : String,  CaseIterable  {
    case Temperature
    case Length
    case Time
    case Volume
}

enum TemperatureMode: String,  CaseIterable {
    case Celsius
    case Fahrenheit
    case Kelvin
}

enum LengthMode: String,  CaseIterable{
    case Meter
    case Kilometer
    case Feet
    case Yards
    case Miles
}

enum TimeMode: String,  CaseIterable{
    case Seconds
    case Minutes
    case Hours
    case Days
}


enum VolumeMode: String,  CaseIterable{
    case Milliliters
    case Liters
    case Cups
    case Pints
    case Gallons
}

struct ContentView: View {
    @State private var mode: ConverterMode = ConverterMode.Temperature
    @State private var temperatureMode : TemperatureMode = TemperatureMode.Celsius
    @State private var endTemperatureMode : TemperatureMode = TemperatureMode.Celsius
    @State private var lengthMode : LengthMode = LengthMode.Meter
    @State private var endLengthMode : LengthMode = LengthMode.Meter
    @State private var timeMode : TimeMode = TimeMode.Seconds
    @State private var endTimeMode : TimeMode = TimeMode.Seconds
    @State private var volumeMode : VolumeMode = VolumeMode.Milliliters
    @State private var endVolumeMode : VolumeMode = VolumeMode.Milliliters
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    Picker("Mode", selection: $mode ){
                        ForEach(ConverterMode.allCases, id: \.self){ mode in
                            Text(mode.rawValue)
                        }
                    }
                    switch(mode){
                    case ConverterMode.Temperature:
                        Picker("Starting unit", selection: $temperatureMode ){
                            ForEach(TemperatureMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    case ConverterMode.Length:
                        Picker("Starting unit", selection: $lengthMode ){
                            ForEach(LengthMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    case ConverterMode.Time:
                        Picker("Starting unit", selection: $timeMode ){
                            ForEach(TimeMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    case ConverterMode.Volume:
                        Picker("Starting unit", selection: $volumeMode ){
                            ForEach(VolumeMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    }
                    switch(mode){
                    case ConverterMode.Temperature:
                        Picker("Ending unit", selection: $endTemperatureMode ){
                            ForEach(TemperatureMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    case ConverterMode.Length:
                        Picker("Ending unit", selection: $endLengthMode ){
                            ForEach(LengthMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    case ConverterMode.Time:
                        Picker("Ending unit", selection: $endTimeMode ){
                            ForEach(TimeMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    case ConverterMode.Volume:
                        Picker("Ending unit", selection: $endVolumeMode ){
                            ForEach(VolumeMode.allCases, id: \.self){ mode in
                                Text(mode.rawValue)
                            }
                        }
                    }
                }
            }.navigationTitle("Converter")
        }
    }
}




#Preview {
    ContentView()
}
