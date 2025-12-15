Parameters:
@__ef_filter__p_0='?'

SELECT "p"."QuantityPerUnit" AS "Quantity"
FROM "Products" AS "p"
WHERE @__ef_filter__p_0 OR NOT ("p"."IsDeleted")


-- SQLite.MS SQLite

SELECT
	[p].[QuantityPerUnit]
FROM
	[Products] [p]



