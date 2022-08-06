BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			toDate32(concat(leftPadUTF8(toString(YEAR(p.DateTimeValue)), toUInt32(toInt32(4)), '0'), '-10-01')) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	MONTH(t.c1) = toInt32(10)

