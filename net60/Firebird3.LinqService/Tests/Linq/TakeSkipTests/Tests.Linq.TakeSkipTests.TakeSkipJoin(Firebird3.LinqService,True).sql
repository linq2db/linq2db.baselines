﻿BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 15
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 15

SELECT
	"e".ID,
	"t7"."SmallIntValue"
FROM
	(
		SELECT FIRST @take
			"t3".ID
		FROM
			(
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
				UNION ALL
				SELECT
					"t2".ID,
					"t2"."MoneyValue",
					"t2"."DateTimeValue",
					"t2"."BoolValue",
					"t2"."GuidValue",
					"t2"."BinaryValue",
					"t2"."SmallIntValue",
					"t2"."StringValue"
				FROM
					"LinqDataTypes" "t2"
			) "t3"
	) "e"
		LEFT JOIN (
			SELECT FIRST @take_1
				"t6".ID,
				"t6"."SmallIntValue"
			FROM
				(
					SELECT
						"t4".ID,
						"t4"."MoneyValue",
						"t4"."DateTimeValue",
						"t4"."BoolValue",
						"t4"."GuidValue",
						"t4"."BinaryValue",
						"t4"."SmallIntValue",
						"t4"."StringValue"
					FROM
						"LinqDataTypes" "t4"
					UNION ALL
					SELECT
						"t5".ID,
						"t5"."MoneyValue",
						"t5"."DateTimeValue",
						"t5"."BoolValue",
						"t5"."GuidValue",
						"t5"."BinaryValue",
						"t5"."SmallIntValue",
						"t5"."StringValue"
					FROM
						"LinqDataTypes" "t5"
				) "t6"
		) "t7" ON "t7".ID = "e".ID
ORDER BY
	"t7".ID,
	"e".ID

