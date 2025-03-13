Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT MAX(p."QuantityPerUnit")
FROM "Products" AS p
WHERE ((@__ef_filter__p_0 OR NOT (p."IsDeleted")) OR NOT (p."IsDeleted")) AND (p."ProductName" LIKE 'U%')


-- PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	MAX(e."QuantityPerUnit")
FROM
	"Products" e
WHERE
	(NOT e."IsDeleted" OR NOT e."IsDeleted") AND e."ProductName" LIKE 'U%' ESCAPE '~'



-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Products" e
WHERE
	(NOT e."IsDeleted" OR NOT e."IsDeleted") AND e."ProductName" = 'a'



