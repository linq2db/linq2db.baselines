﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."FirstName" NOT LIKE '%JOHN' ESCAPE '~' AND p."PersonID" = 1

