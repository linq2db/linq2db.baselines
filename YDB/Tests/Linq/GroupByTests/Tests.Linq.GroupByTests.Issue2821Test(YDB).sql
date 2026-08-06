-- YDB Ydb
DECLARE $currentDate Timestamp -- DateTime2
SET     $currentDate = Timestamp('2020-02-29T17:54:55.123123Z')

SELECT
	o.ID as ID,
	o.MoneyValue as MoneyValue,
	o.DateTimeValue as DateTimeValue,
	o.DateTimeValue2 as DateTimeValue2,
	o.BoolValue as BoolValue,
	o.GuidValue as GuidValue,
	o.SmallIntValue as SmallIntValue,
	o.IntValue as IntValue,
	o.BigIntValue as BigIntValue,
	o.StringValue as StringValue
FROM
	LinqDataTypes o
		INNER JOIN (
			SELECT
				t.ID as ID,
				MAX(t.DateTimeValue2) as c1
			FROM
				LinqDataTypes t
			WHERE
				Coalesce(t.DateTimeValue, t.DateTimeValue2) <= $currentDate AND
				(t.DateTimeValue2 IS NULL OR t.DateTimeValue2 >= $currentDate)
			GROUP BY
				t.ID
		) t1 ON o.ID = t1.ID
WHERE
	Coalesce(o.DateTimeValue, o.DateTimeValue2) <= $currentDate AND
	(o.DateTimeValue2 IS NULL OR o.DateTimeValue2 >= $currentDate) AND
	(o.DateTimeValue2 = t1.c1 OR o.DateTimeValue2 IS NULL AND t1.c1 IS NULL)
ORDER BY
	o.DateTimeValue2

