﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	(p."PersonID" + :n) - 1,
	p."FirstName"
FROM
	"Person" p
WHERE
	p."PersonID" + :n = 2

