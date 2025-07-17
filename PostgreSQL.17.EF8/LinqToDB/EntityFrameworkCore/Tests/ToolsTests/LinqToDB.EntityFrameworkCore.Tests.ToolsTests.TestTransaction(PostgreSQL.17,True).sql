Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT max(p."QuantityPerUnit")
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE 'U%'


-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	MAX(e."QuantityPerUnit")
FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" LIKE 'U%' ESCAPE '~'



-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" = 'a'



