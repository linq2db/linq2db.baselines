Parameters:
@ef_filter__p0='?' (DbType = Boolean)

SELECT max(p."QuantityPerUnit")
FROM "Products" AS p
WHERE (@ef_filter__p0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE 'U%'


-- PostgreSQL.18 PostgreSQL

SELECT
	MAX(e."QuantityPerUnit")
FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" LIKE 'U%' ESCAPE '~'



-- PostgreSQL.18 PostgreSQL

DELETE FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND e."ProductName" = 'a'



