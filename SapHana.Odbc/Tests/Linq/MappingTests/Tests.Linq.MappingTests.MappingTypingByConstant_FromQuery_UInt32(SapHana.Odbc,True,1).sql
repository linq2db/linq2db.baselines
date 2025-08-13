BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ID",
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as "ID",
			CAST(1 AS BigInt) as "Value_1"
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
			CAST(2147483648 AS BigInt) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

