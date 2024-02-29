BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	d.c1
FROM
	(
		SELECT
			t.DateTimeValue as c1
		FROM
			LinqDataTypes t
	) d
WHERE
	DAY(d.c1) > toInt32(0)

