﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	p."PersonID",
	p."FirstName",
	p."MiddleName",
	p."LastName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID
LIMIT 2

