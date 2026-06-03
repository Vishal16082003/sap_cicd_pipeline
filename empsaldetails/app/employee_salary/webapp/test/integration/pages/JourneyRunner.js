sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"demo/empsal/employeesalary/test/integration/pages/EmployeesList",
	"demo/empsal/employeesalary/test/integration/pages/EmployeesObjectPage"
], function (JourneyRunner, EmployeesList, EmployeesObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('demo/empsal/employeesalary') + '/test/flp.html#app-preview',
        pages: {
			onTheEmployeesList: EmployeesList,
			onTheEmployeesObjectPage: EmployeesObjectPage
        },
        async: true
    });

    return runner;
});

