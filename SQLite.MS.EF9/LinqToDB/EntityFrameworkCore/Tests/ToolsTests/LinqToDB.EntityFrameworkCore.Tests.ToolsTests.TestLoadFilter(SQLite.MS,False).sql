Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT "p"."ProductName", "p"."ProductID", "s1"."Discount", "s1"."OrderID", "s1"."CustomerID", "s1"."EmployeeID", "s1"."Freight", "s1"."IsDeleted", "s1"."OrderDate", "s1"."RequiredDate", "s1"."ShipAddress", "s1"."ShipCity", "s1"."ShipCountry", "s1"."ShipName", "s1"."ShipPostalCode", "s1"."ShipRegion", "s1"."ShipVia", "s1"."ShippedDate", "s1"."OrderID0", "s1"."ProductID", "s1"."ProductID0", "s1"."SupplierID", "s1"."ProductID1", "s1"."CategoryID", "s1"."Discontinued", "s1"."IsDeleted0", "s1"."ProductName", "s1"."QuantityPerUnit", "s1"."ReorderLevel", "s1"."SupplierID0", "s1"."UnitPrice", "s1"."UnitsInStock", "s1"."UnitsOnOrder"
FROM "Products" AS "p"
LEFT JOIN (
    SELECT "o"."Discount", "o1"."OrderID", "o1"."CustomerID", "o1"."EmployeeID", "o1"."Freight", "o1"."IsDeleted", "o1"."OrderDate", "o1"."RequiredDate", "o1"."ShipAddress", "o1"."ShipCity", "o1"."ShipCountry", "o1"."ShipName", "o1"."ShipPostalCode", "o1"."ShipRegion", "o1"."ShipVia", "o1"."ShippedDate", "o"."OrderID" AS "OrderID0", "o"."ProductID", "p1"."ProductID" AS "ProductID0", "s0"."SupplierID", "p3"."ProductID" AS "ProductID1", "p3"."CategoryID", "p3"."Discontinued", "p3"."IsDeleted" AS "IsDeleted0", "p3"."ProductName", "p3"."QuantityPerUnit", "p3"."ReorderLevel", "p3"."SupplierID" AS "SupplierID0", "p3"."UnitPrice", "p3"."UnitsInStock", "p3"."UnitsOnOrder"
    FROM "Order Details" AS "o"
    INNER JOIN (
        SELECT "o0"."OrderID", "o0"."CustomerID", "o0"."EmployeeID", "o0"."Freight", "o0"."IsDeleted", "o0"."OrderDate", "o0"."RequiredDate", "o0"."ShipAddress", "o0"."ShipCity", "o0"."ShipCountry", "o0"."ShipName", "o0"."ShipPostalCode", "o0"."ShipRegion", "o0"."ShipVia", "o0"."ShippedDate"
        FROM "Orders" AS "o0"
        WHERE @__ef_filter__p_2 OR NOT ("o0"."IsDeleted") OR NOT ("o0"."IsDeleted")
    ) AS "o1" ON "o"."OrderID" = "o1"."OrderID"
    INNER JOIN (
        SELECT "p0"."ProductID", "p0"."SupplierID"
        FROM "Products" AS "p0"
        WHERE @__ef_filter__p_0 OR NOT ("p0"."IsDeleted") OR NOT ("p0"."IsDeleted")
    ) AS "p1" ON "o"."ProductID" = "p1"."ProductID"
    LEFT JOIN (
        SELECT "s"."SupplierID"
        FROM "Suppliers" AS "s"
        WHERE @__ef_filter__p_3 OR NOT ("s"."IsDeleted") OR NOT ("s"."IsDeleted")
    ) AS "s0" ON "p1"."SupplierID" = "s0"."SupplierID"
    LEFT JOIN (
        SELECT "p2"."ProductID", "p2"."CategoryID", "p2"."Discontinued", "p2"."IsDeleted", "p2"."ProductName", "p2"."QuantityPerUnit", "p2"."ReorderLevel", "p2"."SupplierID", "p2"."UnitPrice", "p2"."UnitsInStock", "p2"."UnitsOnOrder"
        FROM "Products" AS "p2"
        WHERE @__ef_filter__p_0 OR NOT ("p2"."IsDeleted") OR NOT ("p2"."IsDeleted")
    ) AS "p3" ON "s0"."SupplierID" = "p3"."SupplierID"
    WHERE @__ef_filter__p_1 OR NOT ("o"."IsDeleted") OR NOT ("o"."IsDeleted")
) AS "s1" ON "p"."ProductID" = "s1"."ProductID"
WHERE @__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")
ORDER BY "p"."ProductID", "s1"."OrderID0", "s1"."ProductID", "s1"."OrderID", "s1"."ProductID0", "s1"."SupplierID"


