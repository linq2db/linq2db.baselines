﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	p."LastName" || ', ' || p."FirstName"
FROM
	"Person" p
WHERE
	p."LastName" || ', ' || p."FirstName" = 'Pupkin, John'

