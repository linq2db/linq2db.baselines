-- SapHana.Native SapHana
DECLARE @baseDate TimeStamp -- DateTime2
SET     @baseDate = TIMESTAMP '2000-01-01 00:00:00.0000000'

SELECT
	"t1"."Key_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."c1" ORDER BY "e"."c2" DESC, "e"."Key_1") as "RowNumber",
			"e"."c2",
			"e"."Key_1",
			"e"."Count_1"
		FROM
			(
				SELECT
					CASE
						WHEN "g_2"."Year_1" > 0 THEN 1
						ELSE 0
					END as "c1",
					Nano100_Between(:"baseDate", "g_2"."Key_1") as "c2",
					"g_2"."Key_1",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							"g_1"."DateTimeValue" as "Key_1",
							Year("g_1"."DateTimeValue") as "Year_1"
						FROM
							"LinqDataTypes" "g_1"
					) "g_2"
				GROUP BY
					"g_2"."Key_1",
					"g_2"."Year_1"
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."c2" DESC,
	"t1"."Key_1"

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"

