BeforeExecute
-- SapHana.Odbc SapHanaOdbc

WITH "CTE_1" ("Obj_Operator")
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
	"CTE_1" "t1"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"person_1"."LastName"
FROM
	"Person" "person_1"
LIMIT 1

