﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	p1."PersonID",
	p."FirstName"
FROM
	"Person" p1
		CROSS JOIN "Person" p
WHERE
	p1."PersonID" = p."PersonID" AND p."PersonID" = :id

