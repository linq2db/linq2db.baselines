﻿Parameters:
@__ef_filter__p_1='?' (DbType = Boolean), @__ef_filter__p_2='?' (DbType = Boolean), @__ef_filter__p_0='?' (DbType = Boolean)

SELECT o."OrderID", t."OrderID", t."ProductID", t0."ProductID", t1."OrderId", t1."ProductId", t1."Quantity", t."Quantity", t0."ProductName"
FROM "Orders" AS o
INNER JOIN (
    SELECT o0."OrderID", o0."ProductID", o0."Quantity"
    FROM "Order Details" AS o0
    WHERE @__ef_filter__p_1 OR NOT (o0."IsDeleted") OR NOT (o0."IsDeleted")
) AS t ON o."OrderID" = t."OrderID"
INNER JOIN (
    SELECT p."ProductID", p."ProductName"
    FROM "Products" AS p
    WHERE @__ef_filter__p_2 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")
) AS t0 ON t."ProductID" = t0."ProductID"
LEFT JOIN (
    SELECT o1."OrderID" AS "OrderId", o1."ProductID" AS "ProductId", o1."Quantity"
    FROM "Order Details" AS o1
    WHERE @__ef_filter__p_1 OR NOT (o1."IsDeleted") OR NOT (o1."IsDeleted")
) AS t1 ON t0."ProductID" = t1."ProductId"
WHERE @__ef_filter__p_0 OR NOT (o."IsDeleted") OR NOT (o."IsDeleted")
ORDER BY o."OrderID", t."OrderID", t."ProductID", t0."ProductID", t1."OrderId"


BeginTransaction(RepeatableRead)


-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	m_1."ProductId",
	d."OrderID",
	d."ProductID",
	d."Quantity"
FROM
	(
		SELECT DISTINCT
			"a_Product"."ProductID" as "ProductId"
		FROM
			"Orders" e
				INNER JOIN "Order Details" od ON e."OrderID" = od."OrderID"
				INNER JOIN "Products" "a_Product" ON od."ProductID" = "a_Product"."ProductID"
	) m_1
		INNER JOIN "Order Details" d ON m_1."ProductId" = d."ProductID"



DisposeTransaction


-- SQLite.MS PostgreSQL.15 PostgreSQL

SELECT
	"a_Product"."ProductID",
	od."OrderID",
	od."ProductID",
	od."Quantity",
	"a_Product"."ProductName"
FROM
	"Orders" o
		INNER JOIN "Order Details" od ON o."OrderID" = od."OrderID"
		INNER JOIN "Products" "a_Product" ON od."ProductID" = "a_Product"."ProductID"



