﻿Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT o."OrderID", o."CustomerID", o."EmployeeID", o."Freight", o."IsDeleted", o."OrderDate", o."RequiredDate", o."ShipAddress", o."ShipCity", o."ShipCountry", o."ShipName", o."ShipPostalCode", o."ShipRegion", o."ShipVia", o."ShippedDate", t1."OrderID", t1."ProductID", t1."Discount", t1."IsDeleted", t1."Quantity", t1."UnitPrice", t1."ProductID0", t1."CategoryID", t1."Discontinued", t1."IsDeleted0", t1."ProductName", t1."QuantityPerUnit", t1."ReorderLevel", t1."SupplierID", t1."UnitPrice0", t1."UnitsInStock", t1."UnitsOnOrder", t1."OrderID0", t1."ProductID1", t1."Discount0", t1."IsDeleted1", t1."Quantity0", t1."UnitPrice1"
FROM "Orders" AS o
LEFT JOIN (
    SELECT o0."OrderID", o0."ProductID", o0."Discount", o0."IsDeleted", o0."Quantity", o0."UnitPrice", t."ProductID" AS "ProductID0", t."CategoryID", t."Discontinued", t."IsDeleted" AS "IsDeleted0", t."ProductName", t."QuantityPerUnit", t."ReorderLevel", t."SupplierID", t."UnitPrice" AS "UnitPrice0", t."UnitsInStock", t."UnitsOnOrder", t0."OrderID" AS "OrderID0", t0."ProductID" AS "ProductID1", t0."Discount" AS "Discount0", t0."IsDeleted" AS "IsDeleted1", t0."Quantity" AS "Quantity0", t0."UnitPrice" AS "UnitPrice1"
    FROM "Order Details" AS o0
    INNER JOIN (
        SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
        FROM "Products" AS p
        WHERE @__ef_filter__p_2 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")
    ) AS t ON o0."ProductID" = t."ProductID"
    LEFT JOIN (
        SELECT o1."OrderID", o1."ProductID", o1."Discount", o1."IsDeleted", o1."Quantity", o1."UnitPrice"
        FROM "Order Details" AS o1
        WHERE @__ef_filter__p_1 OR NOT (o1."IsDeleted") OR NOT (o1."IsDeleted")
    ) AS t0 ON t."ProductID" = t0."ProductID"
    WHERE @__ef_filter__p_1 OR NOT (o0."IsDeleted") OR NOT (o0."IsDeleted")
) AS t1 ON o."OrderID" = t1."OrderID"
WHERE @__ef_filter__p_0 OR NOT (o."IsDeleted") OR NOT (o."IsDeleted")
ORDER BY o."OrderID", t1."OrderID", t1."ProductID", t1."ProductID0", t1."OrderID0"


