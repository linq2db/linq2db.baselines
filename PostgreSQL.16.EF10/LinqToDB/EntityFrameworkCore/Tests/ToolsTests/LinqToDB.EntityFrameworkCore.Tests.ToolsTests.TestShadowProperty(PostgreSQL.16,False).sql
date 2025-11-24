Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT p."QuantityPerUnit" AS "Quantity"
FROM "Products" AS p
WHERE @ef_filter__p0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")


-- PostgreSQL.15 PostgreSQL

SELECT
	p."QuantityPerUnit"
FROM
	"Products" p



