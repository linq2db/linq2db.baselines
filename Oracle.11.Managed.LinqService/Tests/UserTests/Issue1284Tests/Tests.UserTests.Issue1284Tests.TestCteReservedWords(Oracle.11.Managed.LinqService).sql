BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

WITH CTE_1 ("Obj_Operator")
AS
(
	SELECT
		x."LastName"
	FROM
		"Person" x
)
SELECT
	t1."Obj_Operator"
FROM
	CTE_1 t1
WHERE
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	person_1."LastName"
FROM
	"Person" person_1
WHERE
	ROWNUM <= 1

