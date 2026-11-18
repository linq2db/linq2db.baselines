-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as "ID",
			CAST(NULL AS Decimal(38, 10)) as "Value_1"
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
			CAST(2147483648.123 AS Decimal(38, 10)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

