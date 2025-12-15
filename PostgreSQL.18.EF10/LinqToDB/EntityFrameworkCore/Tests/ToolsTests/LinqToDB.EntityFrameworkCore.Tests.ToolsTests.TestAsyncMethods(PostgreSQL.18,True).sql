Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
FROM "Products" AS p
WHERE (@ef_filter__p0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE '%a%'


Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT p."ProductID", p."CategoryID", p."Discontinued", p."IsDeleted", p."ProductName", p."QuantityPerUnit", p."ReorderLevel", p."SupplierID", p."UnitPrice", p."UnitsInStock", p."UnitsOnOrder"
FROM "Products" AS p
WHERE (@ef_filter__p0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE '%a%'


Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT EXISTS (
    SELECT 1
    FROM "Products" AS p
    WHERE (@ef_filter__p0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE '%a%')


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
	e."Discontinued"
FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" LIKE '%a%' ESCAPE '~'



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
	e."Discontinued"
FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" LIKE '%a%' ESCAPE '~'



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
	e."Discontinued"
FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" LIKE '%a%' ESCAPE '~'



-- PostgreSQL.18 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Products" e
		WHERE
			NOT e."IsDeleted" AND e."ProductName" LIKE '%a%' ESCAPE '~'
	)



