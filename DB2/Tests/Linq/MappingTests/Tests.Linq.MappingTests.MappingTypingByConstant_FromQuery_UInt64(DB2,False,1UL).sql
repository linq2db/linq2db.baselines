-- DB2 DB2.LUW DB2LUW
DECLARE @value Decimal(8)
SET     @value = 1

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(20, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @value Decimal(8)
SET     @value = 2147483648

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Decimal(20, 0)) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

