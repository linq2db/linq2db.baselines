BeforeExecute
-- Firebird3 Firebird

WITH CTE_1 ("Obj_Operator")
AS
(
	SELECT
		"x"."LastName"
	FROM
		"Person" "x"
)
SELECT FIRST 1
	"t1"."Obj_Operator"
FROM
	CTE_1 "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"person_1"."LastName"
FROM
	"Person" "person_1"

