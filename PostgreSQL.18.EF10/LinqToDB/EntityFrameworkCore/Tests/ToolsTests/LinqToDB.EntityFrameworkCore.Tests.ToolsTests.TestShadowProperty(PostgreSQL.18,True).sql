Parameters:
@ef_filter__p1='?' (DbType = Boolean), @ef_filter__p5='?' (DbType = Boolean)

SELECT p."QuantityPerUnit" AS "Quantity"
FROM "Products" AS p
WHERE (@ef_filter__p1 OR p."ProductID" > 2) AND (@ef_filter__p1 OR NOT (p."Discontinued")) AND (@ef_filter__p5 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted"))


-- PostgreSQL.18 PostgreSQL

SELECT
	p."QuantityPerUnit"
FROM
	"Products" p
WHERE
	NOT p."IsDeleted"



