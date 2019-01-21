//: [Previous](@previous)


//: Value & Reference Types


class StudentAsClass {
    let name: String
    var major: String
    
    init(name: String, major: String) {
        self.name = name
        self.major = major
    }
}

let studentObject = StudentAsClass(name: "Jenny", major: "English")

func modify(student: StudentAsClass) -> StudentAsClass {
    student.major = "Computer Science"
    return student
}

let modifiedStudentObject = modify(student: studentObject)
print("Original object: \(studentObject.major) -- Was English to start")
print("Object returned: \(modifiedStudentObject.major)")



struct StudentAsStruct {
    let name: String
    var major: String
}

let studentValueType = StudentAsStruct(name: "Ryan", major: "English")

func modify(student: StudentAsStruct) -> StudentAsStruct {
    var student = student
    student.major = "Mathematics"
    return student
}

let modifiedStudentValueType = modify(student: studentValueType)
print("Original struct value: \(studentValueType.major) -- Was English to start")
print("Struct value returned: \(modifiedStudentValueType.major)")





//: [Next](@next)
