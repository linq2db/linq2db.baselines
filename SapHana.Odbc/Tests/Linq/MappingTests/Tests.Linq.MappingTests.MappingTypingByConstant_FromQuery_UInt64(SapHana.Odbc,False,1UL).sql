-- SapHana.Odbc SapHanaOdbc
DECLARE @value Decimal
SET     @value = 1

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
DECLARE @value Decimal
SET     @value = 2147483648

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

