-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @baseDate TimeStamp -- DateTime
SET     @baseDate = TIMESTAMP '2000-01-01 00:00:00.000000'

SELECT
	t1."RowNumber_2",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1" DESC, e."RowNumber_2") as "RowNumber",
			e."RowNumber_1",
			e."RowNumber_2",
			e."Count_1"
		FROM
			(
				SELECT
					CASE
						WHEN g_2."Year_1" > 0 THEN 1
						ELSE 0
					END as "RowNumber",
					CAST(CAST(Floor(Extract(Day From (g_2."Key_1" - :baseDate))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (g_2."Key_1" - :baseDate))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (g_2."Key_1" - :baseDate))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (g_2."Key_1" - :baseDate)) * 10000000D)) AS Number(19)) AS Float) / 864000000000D as "RowNumber_1",
					g_2."Key_1" as "RowNumber_2",
					COUNT(*) as "Count_1"
				FROM
					(
						SELECT
							g_1."DateTimeValue" as "Key_1",
							EXTRACT(YEAR FROM g_1."DateTimeValue") as "Year_1"
						FROM
							"LinqDataTypes" g_1
					) g_2
				GROUP BY
					g_2."Key_1",
					g_2."Year_1"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1" DESC,
	t1."RowNumber_2"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1.ID,
	t1."MoneyValue",
	t1."DateTimeValue",
	t1."BoolValue",
	t1."GuidValue",
	t1."BinaryValue",
	t1."SmallIntValue",
	t1."StringValue"
FROM
	"LinqDataTypes" t1

