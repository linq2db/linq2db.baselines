-- Oracle.23.Managed Oracle.Managed Oracle12

WITH CTE_1
(
	"entry_FirstName",
	"entry_ID",
	"entry_LastName",
	"entry_MiddleName",
	"entry_Gender",
	"rn"
)
AS
(
	SELECT
		x."FirstName" as "entry_FirstName",
		x."PersonID" as "entry_ID",
		x."LastName" as "entry_LastName",
		x."MiddleName" as "entry_MiddleName",
		x."Gender" as "entry_Gender",
		1 as "rn"
	FROM
		"Person" x
)
SELECT
	t1."entry_FirstName",
	t1."entry_ID",
	t1."entry_LastName",
	t1."entry_MiddleName",
	t1."entry_Gender",
	t1."rn"
FROM
	CTE_1 t1
FETCH NEXT 1 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	person_1."FirstName",
	person_1."PersonID",
	person_1."LastName",
	person_1."MiddleName",
	person_1."Gender"
FROM
	"Person" person_1
FETCH NEXT 1 ROWS ONLY

