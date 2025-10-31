Parameters:
@__ef_filter__p_0='?' (DbType = Boolean)

SELECT max(p."QuantityPerUnit")
FROM "Products" AS p
WHERE (@__ef_filter__p_0 OR NOT (p."IsDeleted") OR NOT (p."IsDeleted")) AND p."ProductName" LIKE 'U%'


-- PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(e."QuantityPerUnit")
FROM
	"Products" e
WHERE
	e."ProductName" LIKE 'U%' ESCAPE '~'



-- PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"Products" e
WHERE
	e."ProductName" = 'a'



