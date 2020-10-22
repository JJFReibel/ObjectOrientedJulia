# MIT License

# Copyright (c) 2020 Jean-Jacques François Reibel

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

mutable struct Car    
    wheels::Int64  
    doors::Int64
    cylinders::Int64
   
    function Car(wheelsIn::Int64, doorsIn::Int64, cylindersIn::Int64)
        new(wheelsIn, doorsIn, cylindersIn)
    end
end

function addWheels(carIn::Car, wheelsIn::Int64)
    carIn.wheels += wheelsIn
end

function addDoors(carIn::Car, doorsIn::Int64)
    carIn.doors += doorsIn
end

function addCylinders(carIn::Car, cylindersIn::Int64)
    carIn.cylinders += cylindersIn
end

function deleteWheels(carIn::Car, wheelsIn::Int64)
    carIn.wheels -= wheelsIn
end

function deleteDoors(carIn::Car, doorsIn::Int64)
    carIn.doors -= doorsIn
end

function deleteCylinders(carIn::Car, cylindersIn::Int64)
    carIn.cylinders -= cylindersIn
end

println("Creating car.")
subaru = Car(4, 4, 4)
println("Wheel check: ", subaru.wheels)
println("Door check: ", subaru.doors)
println("Cylinder check: ", subaru.cylinders, "\n")
println("Adding wheel directly to car object.")
subaru.wheels = 5
println("Wheel check: ", subaru.wheels)
println("Door check: ", subaru.doors)
println("Cylinder check: ", subaru.cylinders, "\n")
println("Removing wheel using object method.")
deleteWheels(subaru, 1)
println("Wheel check: ", subaru.wheels)
println("Door check: ", subaru.doors)
println("Cylinder check: ", subaru.cylinders, "\n")

