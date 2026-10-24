-- Firebird.5 Firebird4
DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1".ID > 1000

-- Firebird.5 Firebird4
INSERT INTO "LinqDataTypes"
(
	ID,
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST(Floor("t2"."Value_1" + 1001) AS Int),
	Gen_Uuid(),
	TRUE
FROM
	(
		SELECT DISTINCT
			Floor(CAST("t1".ID AS DOUBLE PRECISION) / 3) as "Value_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"

-- Firebird.5 Firebird4
DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1".ID > 1000

