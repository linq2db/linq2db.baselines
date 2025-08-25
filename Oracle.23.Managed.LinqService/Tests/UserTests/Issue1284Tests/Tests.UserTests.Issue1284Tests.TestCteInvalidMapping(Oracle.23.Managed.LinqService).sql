BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

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
	t1."entry_FirstName" as "FirstName",
	t1."entry_ID" as ID,
	t1."entry_LastName" as "LastName",
	t1."entry_MiddleName" as "MiddleName",
	t1."entry_Gender" as "Gender",
	t1."rn"
FROM
	CTE_1 t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	person_1."FirstName",
	person_1."PersonID" as ID,
	person_1."LastName",
	person_1."MiddleName",
	person_1."Gender"
FROM
	"Person" person_1
FETCH NEXT 1 ROWS ONLY

