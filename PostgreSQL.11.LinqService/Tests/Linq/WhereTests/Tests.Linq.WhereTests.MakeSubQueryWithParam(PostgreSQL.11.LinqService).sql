﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	(p."PersonID" + :n) - 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

