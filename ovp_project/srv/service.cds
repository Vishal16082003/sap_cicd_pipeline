using {demo as db } from '../db/schema';
service CatalogService{
    entity SalesDataSet as projection on db.SalesData;
}