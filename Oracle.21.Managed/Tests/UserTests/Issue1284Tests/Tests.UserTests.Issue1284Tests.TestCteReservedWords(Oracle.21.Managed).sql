BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

WITH CTE_1 ("Obj_Operator")
AS
(
	SELECT
		x."LastName" as "Obj_Operator"
	FROM
		"Person" x
)
SELECT
	t1."Obj_Operator"
FROM
	CTE_1 t1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	person_1."LastName"
FROM
	"Person" person_1
FETCH NEXT 1 ROWS ONLY

