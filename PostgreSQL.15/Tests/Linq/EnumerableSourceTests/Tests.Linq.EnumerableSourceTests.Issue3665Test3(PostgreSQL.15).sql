﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."PersonID",
	y.value__
FROM
	"Person" x
		CROSS JOIN (VALUES
			(1), (3)
		) y(value__)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

