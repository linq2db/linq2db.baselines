BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(NULL AS Float) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(3147483648 AS Float) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

