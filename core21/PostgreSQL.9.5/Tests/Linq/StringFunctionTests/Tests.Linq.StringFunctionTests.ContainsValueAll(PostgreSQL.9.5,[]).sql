BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(8) -- String
SET     @s = '123[]456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s ILIKE '%~[~]%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(8) -- String
SET     @s = '123[]456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT ILIKE '%~[~]%' ESCAPE '~'

