﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	(p."FirstName" IS NULL OR Length(p."FirstName") = 0),
	p."FirstName",
	(p."MiddleName" IS NULL OR Length(p."MiddleName") = 0),
	p."MiddleName",
	p."LastName"
FROM
	"Person" p

