BeforeExecute
-- Firebird3 Firebird

SELECT
	"e".ID,
	"t3"."SmallIntValue"
FROM
	(
		SELECT DISTINCT
			"t1".ID,
			"t1"."SmallIntValue"
		FROM
			"LinqDataTypes" "t1"
	) "e"
		LEFT JOIN (
			SELECT DISTINCT
				"t2".ID,
				"t2"."SmallIntValue"
			FROM
				"LinqDataTypes" "t2"
		) "t3" ON "t3".ID = "e".ID

