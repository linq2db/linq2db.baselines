-- DB2 DB2.LUW DB2LUW
DECLARE @value BigInt(4) -- Int64
SET     @value = 1

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS BigInt) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @value BigInt(4) -- Int64
SET     @value = 2147483648

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS BigInt) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

