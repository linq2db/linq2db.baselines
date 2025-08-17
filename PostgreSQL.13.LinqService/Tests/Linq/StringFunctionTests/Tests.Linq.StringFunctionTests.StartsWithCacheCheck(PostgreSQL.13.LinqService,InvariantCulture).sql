BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'Joh%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

