﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x."FirstName",
	RANK() OVER(ORDER BY (x."PersonID" = 2))
FROM
	"Person" x

