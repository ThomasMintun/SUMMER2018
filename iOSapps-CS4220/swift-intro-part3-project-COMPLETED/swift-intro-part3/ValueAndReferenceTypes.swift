

class StudentAsClass {
    let name: String
    var major: String
    
    init(name: String, major: String) {
        self.name = name
        self.major = major
    }
}

func modify(student: StudentAsClass) -> StudentAsClass {
    student.major = "Computer Science"
    return student
}

struct StudentAsStruct {
    let name: String
    var major: String
}

func modify(student: StudentAsStruct) -> StudentAsStruct {
    var student = student
    student.major = "Mathematics"
    return student
}

func runValueAndReferenceTypesExample() {
    
    let studentObject = StudentAsClass(name: "Jenny", major: "English")

    let modifiedStudentObject = modify(student: studentObject)
    print("Original object: \(studentObject.major) -- Was English to start")
    print("Object returned: \(modifiedStudentObject.major)")
    
    
    let studentValueType = StudentAsStruct(name: "Ryan", major: "English")

    let modifiedStudentValueType = modify(student: studentValueType)
    print("Original struct value: \(studentValueType.major) -- Was English to start")
    print("Struct value returned: \(modifiedStudentValueType.major)")
    
}




