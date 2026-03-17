-- PostgreSQL.18 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%~[%' ESCAPE '~'

-- PostgreSQL.18 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%~[%' ESCAPE '~'

