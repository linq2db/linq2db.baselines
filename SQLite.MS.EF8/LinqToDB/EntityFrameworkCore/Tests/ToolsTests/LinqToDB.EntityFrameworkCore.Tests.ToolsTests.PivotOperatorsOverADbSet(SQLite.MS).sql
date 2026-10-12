-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[e].[ProductID] as [ProductId]
		FROM
			[Products] [e]
		WHERE
			[e].[UnitsInStock] IS NOT NULL
		UNION ALL
		SELECT
			[e_1].[ProductID] as [ProductId]
		FROM
			[Products] [e_1]
		WHERE
			[e_1].[UnitsOnOrder] IS NOT NULL
	) [t1]



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")) AND "p"."UnitsInStock" IS NOT NULL


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM "Products" AS "p"
WHERE (@__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")) AND "p"."UnitsOnOrder" IS NOT NULL


-- SQLite.MS SQLite
SELECT
	[e].[SupplierID],
	COUNT(CASE
		WHEN [e].[Discontinued] = 0 THEN 1
		ELSE NULL
	END),
	COUNT(CASE
		WHEN [e].[Discontinued] = 1 THEN 1
		ELSE NULL
	END)
FROM
	[Products] [e]
GROUP BY
	[e].[SupplierID]



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT COUNT(*)
FROM (
    SELECT DISTINCT "p"."SupplierID"
    FROM "Products" AS "p"
    WHERE @__ef_filter__p_0 OR NOT ("p"."IsDeleted") OR NOT ("p"."IsDeleted")
) AS "t"


