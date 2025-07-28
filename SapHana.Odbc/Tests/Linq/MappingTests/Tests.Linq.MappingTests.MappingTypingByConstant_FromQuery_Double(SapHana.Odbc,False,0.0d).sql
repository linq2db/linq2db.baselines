BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Double
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @value Double
SET     @value = 3147483648

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

