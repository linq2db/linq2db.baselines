BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW

SELECT
	"person_1"."LastName"
FROM
	"Person" "person_1"
FETCH NEXT 1 ROWS ONLY

