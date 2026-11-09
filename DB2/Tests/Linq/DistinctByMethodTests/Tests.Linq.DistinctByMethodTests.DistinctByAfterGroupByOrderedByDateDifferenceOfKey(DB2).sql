-- DB2 DB2.LUW DB2LUW
DECLARE @baseDate Timestamp(20) -- DateTime
SET     @baseDate = CAST('2000-01-01-00.00.00.000000' AS TIMESTAMP(6))

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
					CAST("g_2"."Year_1" > 0 AS smallint) as "c1",
					(CAST(Days("g_2"."Key_1") AS BigInt) - CAST(Days(CAST(@baseDate AS timestamp)) AS BigInt)) * 864000000000 + (CAST(Midnight_Seconds("g_2"."Key_1") AS BigInt) - CAST(Midnight_Seconds(CAST(@baseDate AS timestamp)) AS BigInt)) * 10000000 + (CAST(Microsecond("g_2"."Key_1") AS BigInt) - CAST(Microsecond(CAST(@baseDate AS timestamp)) AS BigInt)) * 10 as "c2",
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
	"t1"."c2" DESC,
	"t1"."Key_1"

-- DB2 DB2.LUW DB2LUW
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

