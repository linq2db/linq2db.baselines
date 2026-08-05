-- SapHana.Odbc SapHanaOdbc
DECLARE @value Real -- Single
SET     @value = 0

SELECT
	"t1"."ID",
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as "ID",
			? as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @value Real -- Single
SET     @value = 3.14748365E+09

SELECT
	"t1"."ID",
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as "ID",
			? as "Value_1"
		FROM
			"Person" "r"
	) "t1"

