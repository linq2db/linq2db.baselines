BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

WITH "CTE_1"
(
	"entry_ID",
	"FirstName",
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		person_1."PersonID",
		person_1."FirstName",
		person_1."LastName",
		person_1."MiddleName",
		person_1."Gender"
	FROM
		"Person" person_1
)
SELECT
	x."FirstName",
	x."entry_ID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"CTE_1" x
WHERE
	x."entry_ID" = 1

BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."PersonID" = 1

