BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(NULL AS Real) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- Firebird.2.5 Firebird

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

