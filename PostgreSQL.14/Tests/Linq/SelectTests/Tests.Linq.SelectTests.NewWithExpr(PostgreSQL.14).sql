﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	RTRIM((p."FirstName" || '1'), '')
FROM
	"Person" p

