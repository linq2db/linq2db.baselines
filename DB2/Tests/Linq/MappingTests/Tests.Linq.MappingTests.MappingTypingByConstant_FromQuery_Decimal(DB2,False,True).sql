BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Decimal
SET     @value = NULL

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(18, 10)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value (13, 3) -- Decimal
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

