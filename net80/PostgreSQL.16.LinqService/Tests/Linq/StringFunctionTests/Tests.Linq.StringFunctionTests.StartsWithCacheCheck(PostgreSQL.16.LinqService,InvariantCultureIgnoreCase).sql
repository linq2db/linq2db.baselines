BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" ILIKE :nameToCheck ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @nameToCheck Text(4) -- String
SET     @nameToCheck = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT ILIKE :nameToCheck ESCAPE '~' AND
	p."PersonID" = 1

