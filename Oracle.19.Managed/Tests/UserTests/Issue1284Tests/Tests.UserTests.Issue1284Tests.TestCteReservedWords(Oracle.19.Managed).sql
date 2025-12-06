-- Oracle.19.Managed Oracle.Managed Oracle12

WITH CTE_1 ("Obj_Operator")
AS
(
	SELECT
		x."LastName" as "Obj_Operator"
	FROM
		"Person" x
)
SELECT
	t1."Obj_Operator" as "Operator_1"
FROM
	CTE_1 t1
FETCH NEXT 1 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	person_1."LastName"
FROM
	"Person" person_1
FETCH NEXT 1 ROWS ONLY

