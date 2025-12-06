-- Firebird.2.5 Firebird

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(0 AS DOUBLE PRECISION) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- Firebird.2.5 Firebird

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(3147483648 AS DOUBLE PRECISION) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

