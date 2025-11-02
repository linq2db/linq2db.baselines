Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT o."OrderID", o."CustomerID", o."EmployeeID", o."Freight", o."IsDeleted", o."OrderDate", o."RequiredDate", o."ShipAddress", o."ShipCity", o."ShipCountry", o."ShipName", o."ShipPostalCode", o."ShipRegion", o."ShipVia", o."ShippedDate", t."EmployeeID", t."Address", t."BirthDate", t."City", t."Country", t."Extension", t."FirstName", t."HireDate", t."HomePhone", t."IsDeleted", t."LastName", t."Notes", t."Photo", t."PhotoPath", t."PostalCode", t."Region", t."ReportsTo", t."Title", t."TitleOfCourtesy", t0."EmployeeID", t0."TerritoryID", t0."IsDeleted", t1."OrderID", t1."ProductID", t1."Discount", t1."IsDeleted", t1."Quantity", t1."UnitPrice", t1."ProductID0", t1."CategoryID", t1."Discontinued", t1."IsDeleted0", t1."ProductName", t1."QuantityPerUnit", t1."ReorderLevel", t1."SupplierID", t1."UnitPrice0", t1."UnitsInStock", t1."UnitsOnOrder"
FROM "Orders" AS o
LEFT JOIN (
    SELECT e."EmployeeID", e."Address", e."BirthDate", e."City", e."Country", e."Extension", e."FirstName", e."HireDate", e."HomePhone", e."IsDeleted", e."LastName", e."Notes", e."Photo", e."PhotoPath", e."PostalCode", e."Region", e."ReportsTo", e."Title", e."TitleOfCourtesy"
    FROM "Employees" AS e
    WHERE @__ef_filter__p_1 OR NOT (e."IsDeleted") OR NOT (e."IsDeleted")
) AS t ON o."EmployeeID" = t."EmployeeID"
LEFT JOIN (
    SELECT e0."EmployeeID", e0."TerritoryID", e0."IsDeleted"
    FROM "EmployeeTerritories" AS e0
    WHERE @__ef_filter__p_2 OR NOT (e0."IsDeleted") OR NOT (e0."IsDeleted")
) AS t0 ON t."EmployeeID" = t0."EmployeeID"
LEFT JOIN (
    SELECT o0."OrderID", o0."ProductID", o0."Discount", o0."IsDeleted", o0."Quantity", o0."UnitPrice", t2."ProductID" AS "ProductID0", t2."CategoryID", t2."Discontinued", t2."IsDeleted" AS "IsDeleted0", t2."ProductName", t2."QuantityPerUnit", t2."ReorderLevel", t2."SupplierID", t2."UnitPrice" AS "UnitPrice0", t2."UnitsInStock", t2."UnitsOnOrder"
    FROM "Order Details" AS o0
    INNER JOIN (
        SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
        FROM "Products" AS p
        WHERE @__ef_filter__p_4 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")
    ) AS t2 ON o0."ProductID" = t2."ProductID"
    WHERE @__ef_filter__p_3 OR NOT (o0."IsDeleted") OR NOT (o0."IsDeleted")
) AS t1 ON o."OrderID" = t1."OrderID"
WHERE @__ef_filter__p_0 OR NOT (o."IsDeleted") OR NOT (o."IsDeleted")
ORDER BY o."OrderID", t."EmployeeID", t0."EmployeeID", t0."TerritoryID", t1."OrderID", t1."ProductID"




-- PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."EmployeeId",
	d."IsDeleted",
	d."EmployeeID",
	d."TerritoryID"
FROM
	(
		SELECT DISTINCT
			"a_Employee"."EmployeeID" as "EmployeeId"
		FROM
			"Orders" e
				LEFT JOIN "Employees" "a_Employee" ON e."EmployeeID" = "a_Employee"."EmployeeID"
	) m_1
		INNER JOIN "EmployeeTerritories" d ON m_1."EmployeeId" = d."EmployeeID"



-- PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."OrderId",
	d."IsDeleted",
	d."OrderID",
	d."ProductID",
	d."UnitPrice",
	d."Quantity",
	d."Discount",
	"a_Product"."IsDeleted",
	"a_Product"."ProductID",
	"a_Product"."ProductName",
	"a_Product"."SupplierID",
	"a_Product"."CategoryID",
	"a_Product"."QuantityPerUnit",
	"a_Product"."UnitPrice",
	"a_Product"."UnitsInStock",
	"a_Product"."UnitsOnOrder",
	"a_Product"."ReorderLevel",
	"a_Product"."Discontinued"
FROM
	(
		SELECT DISTINCT
			e."OrderID" as "OrderId"
		FROM
			"Orders" e
	) m_1
		INNER JOIN "Order Details" d ON m_1."OrderId" = d."OrderID"
		INNER JOIN "Products" "a_Product" ON d."ProductID" = "a_Product"."ProductID"





-- PostgreSQL.9.5 PostgreSQL

SELECT
	e."IsDeleted",
	e."OrderID",
	e."CustomerID",
	e."EmployeeID",
	e."OrderDate",
	e."RequiredDate",
	e."ShippedDate",
	e."ShipVia",
	e."Freight",
	e."ShipName",
	e."ShipAddress",
	e."ShipCity",
	e."ShipRegion",
	e."ShipPostalCode",
	e."ShipCountry",
	"a_Employee"."IsDeleted",
	"a_Employee"."EmployeeID",
	"a_Employee"."LastName",
	"a_Employee"."FirstName",
	"a_Employee"."Title",
	"a_Employee"."TitleOfCourtesy",
	"a_Employee"."BirthDate",
	"a_Employee"."HireDate",
	"a_Employee"."Address",
	"a_Employee"."City",
	"a_Employee"."Region",
	"a_Employee"."PostalCode",
	"a_Employee"."Country",
	"a_Employee"."HomePhone",
	"a_Employee"."Extension",
	"a_Employee"."Photo",
	"a_Employee"."Notes",
	"a_Employee"."ReportsTo",
	"a_Employee"."PhotoPath"
FROM
	"Orders" e
		LEFT JOIN "Employees" "a_Employee" ON e."EmployeeID" = "a_Employee"."EmployeeID"



