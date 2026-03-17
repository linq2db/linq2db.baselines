-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(NULL AS Decimal(10, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(2147483648 AS Decimal(10, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

