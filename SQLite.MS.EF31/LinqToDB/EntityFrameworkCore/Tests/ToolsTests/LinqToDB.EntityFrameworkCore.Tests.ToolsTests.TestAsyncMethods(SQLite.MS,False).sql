Parameters:
@__ef_filter__p_0='?'

SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder"
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted")) AND (('a' = '') OR (instr("p"."ProductName", 'a') > 0))


Parameters:
@__ef_filter__p_0='?'

SELECT "p"."ProductID", "p"."CategoryID", "p"."Discontinued", "p"."IsDeleted", "p"."ProductName", "p"."QuantityPerUnit", "p"."ReorderLevel", "p"."SupplierID", "p"."UnitPrice", "p"."UnitsInStock", "p"."UnitsOnOrder"
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted")) AND (('a' = '') OR (instr("p"."ProductName", 'a') > 0))


Parameters:
@__ef_filter__p_0='?'

SELECT EXISTS (
    SELECT 1
    FROM "Products" AS "p"
    WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted")) AND (('a' = '') OR (instr("p"."ProductName", 'a') > 0)))


-- SQLite.MS SQLite (asynchronously)

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE '%a%' ESCAPE '~'



-- SQLite.MS SQLite (asynchronously)

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE '%a%' ESCAPE '~'



-- SQLite.MS SQLite (asynchronously)

SELECT
	[e].[IsDeleted],
	[e].[ProductID],
	[e].[ProductName],
	[e].[SupplierID],
	[e].[CategoryID],
	[e].[QuantityPerUnit],
	[e].[UnitPrice],
	[e].[UnitsInStock],
	[e].[UnitsOnOrder],
	[e].[ReorderLevel],
	[e].[Discontinued]
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE '%a%' ESCAPE '~'



-- SQLite.MS SQLite (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Products] [e]
		WHERE
			[e].[ProductName] LIKE '%a%' ESCAPE '~'
	)



