-- Firebird.2.5 Firebird
DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1".ID > 1000

-- Firebird.2.5 Firebird
INSERT INTO "LinqDataTypes"
(
	ID,
	"GuidValue",
	"BoolValue"
)
SELECT
	CAST(Floor("t2"."Value_1" + 1001) AS Int),
	Gen_Uuid(),
	'1'
FROM
	(
		SELECT DISTINCT
			Floor(CAST("t1".ID AS DOUBLE PRECISION) / 3) as "Value_1"
		FROM
			"LinqDataTypes" "t1"
	) "t2"

-- Firebird.2.5 Firebird
DELETE FROM
	"LinqDataTypes" "c_1"
WHERE
	"c_1".ID > 1000

