Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX("p"."QuantityPerUnit")
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")) AND "p"."ProductName" LIKE 'U%'


-- SQLite.MS SQLite

SELECT
	MAX([e].[QuantityPerUnit])
FROM
	[Products] [e]
WHERE
	[e].[ProductName] LIKE 'U%' ESCAPE '~'



-- SQLite.MS SQLite

DELETE FROM
	[Products]
WHERE
	[Products].[ProductName] = 'a'



