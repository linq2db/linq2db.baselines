BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Decimal(1, 0)
SET     @value = 1

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(1, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Decimal(13, 3)
SET     @value = 2147483648.123

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(13, 3)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

