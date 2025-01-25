BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" IS NULL
LIMIT 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ID Text(4) -- String
SET     @ID = 'John'

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."FirstName" = :ID
LIMIT 1

