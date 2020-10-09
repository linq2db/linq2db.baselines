BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE_1 ("Operator")
AS
(
	SELECT 
		"x"."LastName"
	FROM
		"Person" "x"
)
SELECT 
	"t1"."Operator"
FROM
	CTE_1 "t1"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"x"."LastName"
FROM
	"Person" "x"
FETCH FIRST 1 ROWS ONLY

