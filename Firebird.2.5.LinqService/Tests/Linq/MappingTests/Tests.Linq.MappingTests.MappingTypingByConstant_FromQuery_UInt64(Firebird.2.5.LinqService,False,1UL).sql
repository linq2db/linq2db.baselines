BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Decimal
SET     @value = 1

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(10, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Decimal
SET     @value = 2147483648

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(10, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

