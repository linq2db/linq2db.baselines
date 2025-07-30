BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as "ID",
			CAST(NULL AS Double) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as "ID",
			CAST(3147483648 AS Double) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

