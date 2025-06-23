Parameters:
@__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT o."OrderID", o."CustomerID", o."EmployeeID", o."Freight", o."IsDeleted", o."OrderDate", o."RequiredDate", o."ShipAddress", o."ShipCity", o."ShipCountry", o."ShipName", o."ShipPostalCode", o."ShipRegion", o."ShipVia", o."ShippedDate", s."OrderID", s."ProductID", s."Discount", s."IsDeleted", s."Quantity", s."UnitPrice", s."ProductID0", s."CategoryID", s."Discontinued", s."IsDeleted0", s."ProductName", s."QuantityPerUnit", s."ReorderLevel", s."SupplierID", s."UnitPrice0", s."UnitsInStock", s."UnitsOnOrder", s."OrderID0", s."ProductID1", s."Discount0", s."IsDeleted1", s."Quantity0", s."UnitPrice1"
FROM "Orders" AS o
LEFT JOIN (
    SELECT o0."OrderID", o0."ProductID", o0."Discount", o0."IsDeleted", o0."Quantity", o0."UnitPrice", p0."ProductID" AS "ProductID0", p0."CategoryID", p0."Discontinued", p0."IsDeleted" AS "IsDeleted0", p0."ProductName", p0."QuantityPerUnit", p0."ReorderLevel", p0."SupplierID", p0."UnitPrice" AS "UnitPrice0", p0."UnitsInStock", p0."UnitsOnOrder", o2."OrderID" AS "OrderID0", o2."ProductID" AS "ProductID1", o2."Discount" AS "Discount0", o2."IsDeleted" AS "IsDeleted1", o2."Quantity" AS "Quantity0", o2."UnitPrice" AS "UnitPrice1"
    FROM "Order Details" AS o0
    INNER JOIN (
        SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
        FROM "Products" AS p
        WHERE @__ef_filter__p_2 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")
    ) AS p0 ON o0."ProductID" = p0."ProductID"
    LEFT JOIN (
        SELECT o1."OrderID", o1."ProductID", o1."Discount", o1."IsDeleted", o1."Quantity", o1."UnitPrice"
        FROM "Order Details" AS o1
        WHERE @__ef_filter__p_1 OR NOT (o1."IsDeleted") OR NOT (o1."IsDeleted")
    ) AS o2 ON p0."ProductID" = o2."ProductID"
    WHERE @__ef_filter__p_1 OR NOT (o0."IsDeleted") OR NOT (o0."IsDeleted")
) AS s ON o."OrderID" = s."OrderID"
WHERE @__ef_filter__p_0 OR NOT (o."IsDeleted") OR NOT (o."IsDeleted")
ORDER BY o."OrderID", s."OrderID", s."ProductID", s."ProductID0", s."OrderID0"


BeginTransactionAsync(RepeatableRead)


-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	m_1."ProductId",
	m_1."OrderId",
	d_1."IsDeleted",
	d_1."OrderID",
	d_1."ProductID",
	d_1."UnitPrice",
	d_1."Quantity",
	d_1."Discount"
FROM
	(
		SELECT DISTINCT
			"a_Product"."ProductID" as "ProductId",
			t1."OrderId"
		FROM
			(
				SELECT DISTINCT
					e."OrderID" as "OrderId"
				FROM
					"Orders" e
				WHERE
					NOT e."IsDeleted"
			) t1
				INNER JOIN "Order Details" d ON t1."OrderId" = d."OrderID"
				INNER JOIN "Products" "a_Product" ON d."ProductID" = "a_Product"."ProductID"
		WHERE
			NOT "a_Product"."IsDeleted"
	) m_1
		INNER JOIN "Order Details" d_1 ON m_1."ProductId" = d_1."ProductID"
WHERE
	NOT d_1."IsDeleted"



-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	m_1."OrderID",
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
	"Orders" m_1
		INNER JOIN "Order Details" d ON m_1."OrderID" = d."OrderID"
		INNER JOIN "Products" "a_Product" ON d."ProductID" = "a_Product"."ProductID"
WHERE
	NOT m_1."IsDeleted"



DisposeTransactionAsync


-- PostgreSQL.15 PostgreSQL (asynchronously)

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
	e."ShipCountry"
FROM
	"Orders" e
WHERE
	NOT e."IsDeleted"



