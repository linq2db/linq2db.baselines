﻿Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE '%a%'


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE '%a%'


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT EXISTS (
    SELECT 1
    FROM "Products" AS p
    WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE '%a%')


--  PostgreSQL.9.5 PostgreSQL (asynchronously)

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
	e."Discontinued"
FROM
	"Products" e
WHERE
	e."ProductName" LIKE '%a%' ESCAPE '~'



--  PostgreSQL.9.5 PostgreSQL (asynchronously)

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
	e."Discontinued"
FROM
	"Products" e
WHERE
	e."ProductName" LIKE '%a%' ESCAPE '~'



--  PostgreSQL.9.5 PostgreSQL (asynchronously)

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
	e."Discontinued"
FROM
	"Products" e
WHERE
	e."ProductName" LIKE '%a%' ESCAPE '~'



--  PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Products" e
			WHERE
				e."ProductName" LIKE '%a%' ESCAPE '~'
		)
			THEN True
		ELSE False
	END



