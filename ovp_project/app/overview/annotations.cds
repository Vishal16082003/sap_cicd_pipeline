

using CatalogService from '../../srv/service';

annotate CatalogService.SalesDataSet with @(
    UI.SelectionFields : [
        Region
    ],

    UI.LineItem : [
        {
            Value : Region,
            Label : 'Region'
        },
        {
            Value : TotalSales,
            Label : 'Total Sales'
        }
    ],

    UI.Chart #SalesChart : {
        Title : 'Sales by Region',
        ChartType : #Column,
        Dimensions : [ Region ],
        DimensionAttributes : [
            {
                Dimension : Region,
                Role : #Category
            }
        ],
        Measures : [ TotalSales ],
        MeasureAttributes : [
            {
                Measure : TotalSales,
                Role : #Axis1
            }
        ]
    }
);