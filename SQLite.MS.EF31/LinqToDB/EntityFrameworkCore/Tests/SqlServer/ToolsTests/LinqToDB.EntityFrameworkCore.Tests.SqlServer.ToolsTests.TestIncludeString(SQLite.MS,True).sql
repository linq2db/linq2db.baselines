Parameters:
@__ef_filter__p_1='?', @__ef_filter__p_2='?', @__ef_filter__p_4='?', @__ef_filter__p_3='?', @__ef_filter__p_0='?'

SELECT "o"."OrderID", "o"."CustomerID", "o"."EmployeeID", "o"."Freight", "o"."IsDeleted", "o"."OrderDate", "o"."RequiredDate", "o"."ShipAddress", "o"."ShipCity", "o"."ShipCountry", "o"."ShipName", "o"."ShipPostalCode", "o"."ShipRegion", "o"."ShipVia", "o"."ShippedDate", "t"."EmployeeID", "t"."Address", "t"."BirthDate", "t"."City", "t"."Country", "t"."Extension", "t"."FirstName", "t"."HireDate", "t"."HomePhone", "t"."IsDeleted", "t"."LastName", "t"."Notes", "t"."Photo", "t"."PhotoPath", "t"."PostalCode", "t"."Region", "t"."ReportsTo", "t"."Title", "t"."TitleOfCourtesy", "t0"."EmployeeID", "t0"."TerritoryID", "t0"."IsDeleted", "t2"."OrderID", "t2"."ProductID", "t2"."Discount", "t2"."IsDeleted", "t2"."Quantity", "t2"."UnitPrice", "t2"."ProductID0", "t2"."CategoryID", "t2"."Discontinued", "t2"."IsDeleted0", "t2"."ProductName", "t2"."QuantityPerUnit", "t2"."ReorderLevel", "t2"."SupplierID", "t2"."UnitPrice0", "t2"."UnitsInStock", "t2"."UnitsOnOrder"
FROM "Orders" AS "o"
LEFT JOIN (
    SELECT "e"."EmployeeID", "e"."Address", "e"."BirthDate", "e"."City", "e"."Country", "e"."Extension", "e"."FirstName", "e"."HireDate", "e"."HomePhone", "e"."IsDeleted", "e"."LastName", "e"."Notes", "e"."Photo", "e"."PhotoPath", "e"."PostalCode", "e"."Region", "e"."ReportsTo", "e"."Title", "e"."TitleOfCourtesy"
    FROM "Employees" AS "e"
    WHERE @__ef_filter__p_1 OR NOT ("e"."IsDeleted")
) AS "t" ON "o"."EmployeeID" = "t"."EmployeeID"
LEFT JOIN (
    SELECT "e0"."EmployeeID", "e0"."TerritoryID", "e0"."IsDeleted"
    FROM "EmployeeTerritories" AS "e0"
    WHERE @__ef_filter__p_2 OR NOT ("e0"."IsDeleted")
) AS "t0" ON "t"."EmployeeID" = "t0"."EmployeeID"
LEFT JOIN (
    SELECT "o0"."OrderID", "o0"."ProductID", "o0"."Discount", "o0"."IsDeleted", "o0"."Quantity", "o0"."UnitPrice", "t1"."ProductID" AS "ProductID0", "t1"."CategoryID", "t1"."Discontinued", "t1"."IsDeleted" AS "IsDeleted0", "t1"."ProductName", "t1"."QuantityPerUnit", "t1"."ReorderLevel", "t1"."SupplierID", "t1"."UnitPrice" AS "UnitPrice0", "t1"."UnitsInStock", "t1"."UnitsOnOrder"
    FROM "Order Details" AS "o0"
    INNER JOIN (
        SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder"
        FROM "Products" AS "p"
        WHERE @__ef_filter__p_4 OR NOT ("p"."IsDeleted")
    ) AS "t1" ON "o0"."ProductID" = "t1"."ProductID"
    WHERE @__ef_filter__p_3 OR NOT ("o0"."IsDeleted")
) AS "t2" ON "o"."OrderID" = "t2"."OrderID"
WHERE @__ef_filter__p_0 OR NOT ("o"."IsDeleted")
ORDER BY "o"."OrderID", "t0"."EmployeeID", "t0"."TerritoryID", "t2"."OrderID", "t2"."ProductID", "t2"."ProductID0"


