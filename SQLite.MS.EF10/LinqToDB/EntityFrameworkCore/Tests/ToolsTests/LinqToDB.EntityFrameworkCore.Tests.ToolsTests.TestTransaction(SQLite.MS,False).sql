Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT MAX("p"."QuantityPerUnit")
FROM "Products" AS "p"
WHERE (@ef_filter__p1 OR "p"."ProductID" > 2) AND (@ef_filter__p1 OR NOT ("p"."Discontinued")) AND (@ef_filter__p5 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")) AND "p"."ProductName" LIKE 'U%'


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



