BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Real(4) -- Single
SET     @value = 0

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Real) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @value Real(4) -- Single
SET     @value = 3.14748365E+09

SELECT
	"t1".ID,
	"t1"."Value_1"
FROM
	(
		SELECT
			"r"."PersonID" as ID,
			CAST(@value AS Real) as "Value_1"
		FROM
			"Person" "r"
	) "t1"

