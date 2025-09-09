BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @value Decimal
SET     @value = NULL

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
-- Firebird.5 Firebird4 (asynchronously)
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

