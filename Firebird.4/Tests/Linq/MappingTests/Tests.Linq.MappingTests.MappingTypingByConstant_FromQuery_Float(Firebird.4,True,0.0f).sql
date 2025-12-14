-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(0 AS Real) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(3.14748365E+09 AS Real) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

