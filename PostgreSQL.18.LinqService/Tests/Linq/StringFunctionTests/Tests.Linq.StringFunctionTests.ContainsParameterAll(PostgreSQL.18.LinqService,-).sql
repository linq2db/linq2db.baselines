BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
DECLARE @s Text(7) -- String
SET     @s = '123-456'
DECLARE @toTest Text(3) -- String
SET     @toTest = '%-%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

