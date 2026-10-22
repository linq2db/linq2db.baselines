-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	(
		SELECT
			e."ProductID" as "ProductId"
		FROM
			"Products" e
		WHERE
			e."UnitsInStock" IS NOT NULL
		UNION ALL
		SELECT
			e_1."ProductID" as "ProductId"
		FROM
			"Products" e_1
		WHERE
			e_1."UnitsOnOrder" IS NOT NULL
	) t1



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT count(*)::int
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."UnitsInStock" IS NOT NULL


Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT count(*)::int
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."UnitsOnOrder" IS NOT NULL


-- PostgreSQL.13 PostgreSQL12
SELECT
	g_1."SupplierID",
	COUNT(*) FILTER (WHERE g_1."Discontinued" = False),
	COUNT(*) FILTER (WHERE g_1."Discontinued" = True)
FROM
	"Products" g_1
GROUP BY
	g_1."SupplierID"



Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT count(*)::int
FROM (
    SELECT DISTINCT p."SupplierID"
    FROM "Products" AS p
    WHERE @__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")
) AS t


