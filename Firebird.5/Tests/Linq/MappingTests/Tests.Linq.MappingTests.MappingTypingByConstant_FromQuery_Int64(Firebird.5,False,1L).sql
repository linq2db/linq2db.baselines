-- Firebird.5 Firebird4
DECLARE @value BigInt -- Int64
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

-- Firebird.5 Firebird4
DECLARE @value BigInt -- Int64
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

