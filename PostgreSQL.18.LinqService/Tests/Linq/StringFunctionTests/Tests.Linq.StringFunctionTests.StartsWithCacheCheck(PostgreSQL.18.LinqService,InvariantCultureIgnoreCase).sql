﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT 2

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

