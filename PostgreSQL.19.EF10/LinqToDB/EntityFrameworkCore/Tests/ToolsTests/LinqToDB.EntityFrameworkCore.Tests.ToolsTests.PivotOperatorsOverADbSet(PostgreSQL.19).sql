-- PostgreSQL.19 PostgreSQL12
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
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT count(*)::int
FROM "Products" AS p
WHERE (@ef_filter__p1 OR p."ProductID" > 2) AND (@ef_filter__p1 OR NOT (p."Discontinued")) AND (@ef_filter__p5 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."UnitsInStock" IS NOT NULL


Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT count(*)::int
FROM "Products" AS p
WHERE (@ef_filter__p1 OR p."ProductID" > 2) AND (@ef_filter__p1 OR NOT (p."Discontinued")) AND (@ef_filter__p5 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."UnitsOnOrder" IS NOT NULL


-- PostgreSQL.19 PostgreSQL12
SELECT
	e."SupplierID",
	COUNT(*) FILTER (WHERE e."Discontinued" = False),
	COUNT(*) FILTER (WHERE e."Discontinued" = True)
FROM
	"Products" e
GROUP BY
	e."SupplierID"



Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT count(*)::int
FROM (
    SELECT DISTINCT p."SupplierID"
    FROM "Products" AS p
    WHERE (@ef_filter__p1 OR p."ProductID" > 2) AND (@ef_filter__p1 OR NOT (p."Discontinued")) AND (@ef_filter__p5 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted"))
) AS p0


