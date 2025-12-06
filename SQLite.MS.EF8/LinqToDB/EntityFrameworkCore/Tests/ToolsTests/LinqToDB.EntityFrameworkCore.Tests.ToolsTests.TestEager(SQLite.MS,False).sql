Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_4='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_5='?' (DbType = Boolean), @__ef_filter__p_3='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT "t"."EmployeeID", "t"."Address", "t"."BirthDate", "t"."City", "t"."Country", "t"."Extension", "t"."FirstName", "t"."HireDate", "t"."HomePhone", "t"."IsDeleted", "t"."LastName", "t"."Notes", "t"."Photo", "t"."PhotoPath", "t"."PostalCode", "t"."Region", "t"."ReportsTo", "t"."Title", "t"."TitleOfCourtesy", "o"."OrderID", "t1"."EmployeeID", "t1"."TerritoryID", "t1"."IsDeleted", "t1"."TerritoryID0", "t1"."IsDeleted0", "t1"."RegionID", "t1"."TerritoryDescription", "t3"."OrderID", "t3"."ProductID", "t3"."Discount", "t3"."IsDeleted", "t3"."Quantity", "t3"."UnitPrice", "t3"."ProductID0", "t3"."CategoryID", "t3"."Discontinued", "t3"."IsDeleted0", "t3"."ProductName", "t3"."QuantityPerUnit", "t3"."ReorderLevel", "t3"."SupplierID", "t3"."UnitPrice0", "t3"."UnitsInStock", "t3"."UnitsOnOrder"
FROM "Orders" AS "o"
LEFT JOIN (
    SELECT "e"."EmployeeID", "e"."Address", "e"."BirthDate", "e"."City", "e"."Country", "e"."Extension", "e"."FirstName", "e"."HireDate", "e"."HomePhone", "e"."IsDeleted", "e"."LastName", "e"."Notes", "e"."Photo", "e"."PhotoPath", "e"."PostalCode", "e"."Region", "e"."ReportsTo", "e"."Title", "e"."TitleOfCourtesy"
    FROM "Employees" AS "e"
    WHERE @__ef_filter__p_1 OR NOT ("e"."IsDeleted") OR NOT ("e"."IsDeleted")
) AS "t" ON "o"."EmployeeID" = "t"."EmployeeID"
LEFT JOIN (
    SELECT "e0"."EmployeeID", "e0"."TerritoryID", "e0"."IsDeleted", "t0"."TerritoryID" AS "TerritoryID0", "t0"."IsDeleted" AS "IsDeleted0", "t0"."RegionID", "t0"."TerritoryDescription"
    FROM "EmployeeTerritories" AS "e0"
    INNER JOIN (
        SELECT "t2"."TerritoryID", "t2"."IsDeleted", "t2"."RegionID", "t2"."TerritoryDescription"
        FROM "Territories" AS "t2"
        WHERE @__ef_filter__p_4 OR NOT ("t2"."IsDeleted") OR NOT ("t2"."IsDeleted")
    ) AS "t0" ON "e0"."TerritoryID" = "t0"."TerritoryID"
    WHERE @__ef_filter__p_2 OR NOT ("e0"."IsDeleted") OR NOT ("e0"."IsDeleted")
) AS "t1" ON "t"."EmployeeID" = "t1"."EmployeeID"
LEFT JOIN (
    SELECT "o0"."OrderID", "o0"."ProductID", "o0"."Discount", "o0"."IsDeleted", "o0"."Quantity", "o0"."UnitPrice", "t4"."ProductID" AS "ProductID0", "t4"."CategoryID", "t4"."Discontinued", "t4"."IsDeleted" AS "IsDeleted0", "t4"."ProductName", "t4"."QuantityPerUnit", "t4"."ReorderLevel", "t4"."SupplierID", "t4"."UnitPrice" AS "UnitPrice0", "t4"."UnitsInStock", "t4"."UnitsOnOrder"
    FROM "Order Details" AS "o0"
    INNER JOIN (
        SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder"
        FROM "Products" AS "p"
        WHERE @__ef_filter__p_5 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")
    ) AS "t4" ON "o0"."ProductID" = "t4"."ProductID"
    WHERE @__ef_filter__p_3 OR NOT ("o0"."IsDeleted") OR NOT ("o0"."IsDeleted")
) AS "t3" ON "o"."OrderID" = "t3"."OrderID"
WHERE @__ef_filter__p_0 OR NOT ("o"."IsDeleted") OR NOT ("o"."IsDeleted")
ORDER BY "o"."OrderID", "t"."EmployeeID", "t1"."EmployeeID", "t1"."TerritoryID", "t1"."TerritoryID0", "t3"."OrderID", "t3"."ProductID"




-- SQLite.MS SQLite

SELECT
	[m_1].[EmployeeId],
	[d].[IsDeleted],
	[d].[EmployeeID],
	[d].[TerritoryID],
	[e_1].[IsDeleted],
	[e_1].[TerritoryID],
	[e_1].[TerritoryDescription],
	[e_1].[RegionID]
FROM
	(
		SELECT DISTINCT
			[a_Employee].[EmployeeID] as [EmployeeId]
		FROM
			[Orders] [e]
				LEFT JOIN [Employees] [a_Employee] ON [e].[EmployeeID] = [a_Employee].[EmployeeID]
	) [m_1]
		INNER JOIN [EmployeeTerritories] [d] ON [m_1].[EmployeeId] = [d].[EmployeeID]
		INNER JOIN [Territories] [e_1] ON [d].[TerritoryID] = [e_1].[TerritoryID]



-- SQLite.MS SQLite

SELECT
	[m_1].[OrderId],
	[d].[IsDeleted],
	[d].[OrderID],
	[d].[ProductID],
	[d].[UnitPrice],
	[d].[Quantity],
	[d].[Discount],
	[e_1].[IsDeleted],
	[e_1].[ProductID],
	[e_1].[ProductName],
	[e_1].[SupplierID],
	[e_1].[CategoryID],
	[e_1].[QuantityPerUnit],
	[e_1].[UnitPrice],
	[e_1].[UnitsInStock],
	[e_1].[UnitsOnOrder],
	[e_1].[ReorderLevel],
	[e_1].[Discontinued]
FROM
	(
		SELECT DISTINCT
			[e].[OrderID] as [OrderId]
		FROM
			[Orders] [e]
	) [m_1]
		INNER JOIN [Order Details] [d] ON [m_1].[OrderId] = [d].[OrderID]
		INNER JOIN [Products] [e_1] ON [d].[ProductID] = [e_1].[ProductID]





-- SQLite.MS SQLite

SELECT
	[a_Employee].[IsDeleted],
	[a_Employee].[EmployeeID],
	[a_Employee].[LastName],
	[a_Employee].[FirstName],
	[a_Employee].[Title],
	[a_Employee].[TitleOfCourtesy],
	[a_Employee].[BirthDate],
	[a_Employee].[HireDate],
	[a_Employee].[Address],
	[a_Employee].[City],
	[a_Employee].[Region],
	[a_Employee].[PostalCode],
	[a_Employee].[Country],
	[a_Employee].[HomePhone],
	[a_Employee].[Extension],
	[a_Employee].[Photo],
	[a_Employee].[Notes],
	[a_Employee].[ReportsTo],
	[a_Employee].[PhotoPath],
	[o].[OrderID]
FROM
	[Orders] [o]
		LEFT JOIN [Employees] [a_Employee] ON [o].[EmployeeID] = [a_Employee].[EmployeeID]



