﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH cte
(
	"FirstName",
	"ID",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		x."FirstName",
		x."PersonID",
		x."LastName",
		x."MiddleName",
		x."Gender"
	FROM
		"Person" x
)
SELECT
	t1."FirstName",
	t1."ID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	cte t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x

