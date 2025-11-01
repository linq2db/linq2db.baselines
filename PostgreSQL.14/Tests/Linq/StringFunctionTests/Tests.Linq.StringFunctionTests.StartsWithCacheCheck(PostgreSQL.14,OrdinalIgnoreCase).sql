-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

