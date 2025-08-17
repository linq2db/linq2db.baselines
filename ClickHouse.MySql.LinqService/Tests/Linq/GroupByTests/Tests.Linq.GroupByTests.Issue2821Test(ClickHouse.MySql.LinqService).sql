BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	o.ID,
	o.MoneyValue,
	o.DateTimeValue,
	o.DateTimeValue2,
	o.BoolValue,
	o.GuidValue,
	o.SmallIntValue,
	o.IntValue,
	o.BigIntValue,
	o.StringValue
FROM
	LinqDataTypes o
		INNER JOIN (
			SELECT
				t.ID as ID,
				maxOrNull(t.DateTimeValue2) as c1
			FROM
				LinqDataTypes t
			WHERE
				Coalesce(t.DateTimeValue, t.DateTimeValue2) <= toDateTime64('2020-02-29 17:54:55.123', 3) AND
				(t.DateTimeValue2 IS NULL OR t.DateTimeValue2 >= toDateTime64('2020-02-29 17:54:55.1231234', 7))
			GROUP BY
				t.ID
		) t1 ON o.ID = t1.ID AND (o.DateTimeValue2 = t1.c1 OR o.DateTimeValue2 IS NULL AND t1.c1 IS NULL)
WHERE
	Coalesce(o.DateTimeValue, o.DateTimeValue2) <= toDateTime64('2020-02-29 17:54:55.123', 3) AND
	(o.DateTimeValue2 IS NULL OR o.DateTimeValue2 >= toDateTime64('2020-02-29 17:54:55.1231234', 7))
ORDER BY
	o.DateTimeValue2

