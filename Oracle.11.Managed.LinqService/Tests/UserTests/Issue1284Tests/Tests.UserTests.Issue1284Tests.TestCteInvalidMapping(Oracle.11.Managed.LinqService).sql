BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
		x."FirstName",
		x."PersonID",
		x."LastName",
		x."MiddleName",
		x."Gender",
		1
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
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	person_1."FirstName",
	person_1."PersonID",
	person_1."LastName",
	person_1."MiddleName",
	person_1."Gender"
FROM
	"Person" person_1
WHERE
	ROWNUM <= 1

