﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @nameToCheck_1 Text(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck_1 ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @nameToCheck_1 Text(4) -- String
SET     @nameToCheck_1 = 'Joh%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck_1 ESCAPE '~' AND
	p."PersonID" = 1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @nameToCheck_1 Text(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE :nameToCheck_1 ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @nameToCheck_1 Text(4) -- String
SET     @nameToCheck_1 = 'JOH%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE :nameToCheck_1 ESCAPE '~' AND
	p."PersonID" = 1

