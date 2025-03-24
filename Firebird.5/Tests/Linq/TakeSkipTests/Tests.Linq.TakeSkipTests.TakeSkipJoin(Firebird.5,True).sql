﻿BeforeExecute
--  Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

BeforeExecute
--  Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 15

SELECT
	"e".ID,
	"p"."SmallIntValue"
FROM
	(
		SELECT
			"t3".ID
		FROM
			(
				SELECT
					"t1".ID
				FROM
					"LinqDataTypes" "t1"
				UNION ALL
				SELECT
					"t2".ID
				FROM
					"LinqDataTypes" "t2"
			) "t3"
		FETCH NEXT @take ROWS ONLY
	) "e"
		LEFT JOIN (
			SELECT
				"t6".ID,
				"t6"."SmallIntValue"
			FROM
				(
					SELECT
						"t4".ID,
						"t4"."SmallIntValue"
					FROM
						"LinqDataTypes" "t4"
					UNION ALL
					SELECT
						"t5".ID,
						"t5"."SmallIntValue"
					FROM
						"LinqDataTypes" "t5"
				) "t6"
			FETCH NEXT @take ROWS ONLY
		) "p" ON "p".ID = "e".ID
ORDER BY
	"e".ID,
	"p".ID

