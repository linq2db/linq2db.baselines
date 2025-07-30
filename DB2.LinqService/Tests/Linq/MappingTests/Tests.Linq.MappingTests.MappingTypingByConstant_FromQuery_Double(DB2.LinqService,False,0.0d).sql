BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Double(8)
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
-- DB2 DB2.LUW DB2LUW
DECLARE @value Double(8)
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

