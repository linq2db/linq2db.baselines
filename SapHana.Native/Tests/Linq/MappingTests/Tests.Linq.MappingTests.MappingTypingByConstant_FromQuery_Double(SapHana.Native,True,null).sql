-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
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

