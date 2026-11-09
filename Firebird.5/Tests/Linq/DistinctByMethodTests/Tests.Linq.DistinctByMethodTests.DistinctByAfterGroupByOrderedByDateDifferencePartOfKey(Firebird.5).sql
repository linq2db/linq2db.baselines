-- Firebird.5 Firebird4
DECLARE @baseDate TimeStamp -- DateTime
SET     @baseDate = TIMESTAMP '2000-01-01 00:00:00.0000'

SELECT
	"t1"."Key_1",
	"t1"."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."c1" ORDER BY "e"."TotalDays" DESC, "e"."Key_1") as "RowNumber",
			"e"."TotalDays",
			"e"."Key_1",
			"e"."Count_1"
		FROM
			(
				SELECT
					"g_2"."Year_1" > 0 as "c1",
					CAST(CAST(CAST(Floor(DateDiff(millisecond, CAST(@baseDate AS TimeStamp), "g_2"."Key_1") * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 864000000000 as "TotalDays",
					"g_2"."Key_1",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							"g_1"."DateTimeValue" as "Key_1",
							Extract(year from "g_1"."DateTimeValue") as "Year_1"
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
	"t1"."TotalDays" DESC,
	"t1"."Key_1"

-- Firebird.5 Firebird4
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

