BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @value Float -- Single
SET     @value = NULL

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
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @value Float -- Single
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

