BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s ILIKE '%n%' ESCAPE '~'

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT ILIKE '%n%' ESCAPE '~'

