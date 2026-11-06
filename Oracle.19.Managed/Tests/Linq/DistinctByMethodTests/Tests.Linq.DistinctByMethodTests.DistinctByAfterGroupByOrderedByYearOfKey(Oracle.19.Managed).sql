-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."RowNumber_2",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber_1" ORDER BY e."RowNumber_1" DESC, e."RowNumber" DESC) as "RowNumber",
			e."RowNumber_1",
			e."RowNumber" as "RowNumber_2",
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					g_1."DateTimeValue" as "RowNumber",
					EXTRACT(YEAR FROM g_1."DateTimeValue") as "RowNumber_1"
				FROM
					"LinqDataTypes" g_1
			) e
		GROUP BY
			e."RowNumber",
			e."RowNumber_1"
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1" DESC,
	t1."RowNumber_2" DESC

-- Oracle.19.Managed Oracle.Managed Oracle12
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

