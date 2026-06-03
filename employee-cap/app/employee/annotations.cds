using EmployeeService from '../../srv/employee-service';

annotate EmployeeService.Employees with @(

    UI.LineItem : [

        {
            Value : EmployeeName
        },

        {
            Value : Role
        }

    ],

    UI.SelectionFields : [
        EmployeeName,
        Role
    ],

    UI.HeaderInfo : {

        TypeName : 'Employee',
        TypeNamePlural : 'Employees',

        Title : {
            Value : EmployeeName
        }

    },

    UI.FieldGroup #General : {

        Data : [

            {
                Value : EmployeeName
            },

            {
                Value : Role
            }

        ]

    }

);