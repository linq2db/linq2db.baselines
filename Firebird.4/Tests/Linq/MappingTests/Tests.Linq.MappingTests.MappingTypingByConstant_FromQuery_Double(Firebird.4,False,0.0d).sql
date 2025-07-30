BeforeExecute
-- Firebird.4 Firebird4
DECLARE @value Double
SET     @value = 0

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Float) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @value Double
SET     @value = 3147483648

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Float) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

