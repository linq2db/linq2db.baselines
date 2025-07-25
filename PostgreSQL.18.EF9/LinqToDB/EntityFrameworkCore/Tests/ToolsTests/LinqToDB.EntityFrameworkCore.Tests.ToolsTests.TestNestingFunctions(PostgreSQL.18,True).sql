﻿Parameters:
@__ef_filter__p_0='?' (DbType = Boolean), @__ef_filter__p_1='?' (DbType = Boolean)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder", p1."ProductID", p1."CategoryID", p1."Discontinued", p1."IsDeleted", p1."ProductName", p1."QuantityPerUnit", p1."ReorderLevel", p1."SupplierID", p1."UnitPrice", p1."UnitsInStock", p1."UnitsOnOrder"
FROM "Products" AS p
CROSS JOIN (
    SELECT p0."ProductID", p0."CategoryID", p0."Discontinued", p0."IsDeleted", p0."ProductName", p0."QuantityPerUnit", p0."ReorderLevel", p0."SupplierID", p0."UnitPrice", p0."UnitsInStock", p0."UnitsOnOrder"
    FROM "Products" AS p0
    WHERE (@__ef_filter__p_0 OR NOT (p0."IsDeleted") OR NOT (p0."IsDeleted")) AND (
        SELECT count(*)::int
        FROM "Order Details" AS o0
        WHERE (@__ef_filter__p_1 OR NOT (o0."IsDeleted") OR NOT (o0."IsDeleted")) AND p0."ProductID" = o0."ProductID") > 0
) AS p1
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND (
    SELECT count(*)::int
    FROM "Order Details" AS o
    WHERE (@__ef_filter__p_1 OR NOT (o."IsDeleted") OR NOT (o."IsDeleted")) AND p."ProductID" = o."ProductID") > 0 AND p."ProductID" = p1."ProductID"
ORDER BY p."ProductID"


-- PostgreSQL.18 PostgreSQL

SELECT
	e."IsDeleted",
	e."ProductID",
	e."ProductName",
	e."SupplierID",
	e."CategoryID",
	e."QuantityPerUnit",
	e."UnitPrice",
	e."UnitsInStock",
	e."UnitsOnOrder",
	e."ReorderLevel",
	e."Discontinued",
	pd2."IsDeleted",
	pd2."ProductID",
	pd2."ProductName",
	pd2."SupplierID",
	pd2."CategoryID",
	pd2."QuantityPerUnit",
	pd2."UnitPrice",
	pd2."UnitsInStock",
	pd2."UnitsOnOrder",
	pd2."ReorderLevel",
	pd2."Discontinued"
FROM
	"Products" e,
	"Products" pd2
WHERE
	NOT e."IsDeleted" AND
	(
		SELECT
			COUNT(*)
		FROM
			"Order Details" e_1
		WHERE
			NOT e_1."IsDeleted" AND e."ProductID" = e_1."ProductID"
	) > 0 AND
	NOT pd2."IsDeleted" AND
	(
		SELECT
			COUNT(*)
		FROM
			"Order Details" e_2
		WHERE
			NOT e_2."IsDeleted" AND pd2."ProductID" = e_2."ProductID"
	) > 0 AND
	e."ProductID" = pd2."ProductID"
ORDER BY
	e."ProductID"



