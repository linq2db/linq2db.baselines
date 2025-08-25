BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

WITH CTE_1 ("Obj_Operator")
AS
(
	SELECT
		"x"."LastName"
	FROM
		"Person" "x"
)
SELECT
	"t1"."Obj_Operator"
FROM
	CTE_1 "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"person_1"."LastName"
FROM
	"Person" "person_1"
FETCH NEXT 1 ROWS ONLY

