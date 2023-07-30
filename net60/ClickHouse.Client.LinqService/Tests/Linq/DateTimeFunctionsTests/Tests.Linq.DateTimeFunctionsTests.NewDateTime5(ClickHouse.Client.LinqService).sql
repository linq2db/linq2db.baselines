BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			toDateTime64(concat(leftPadUTF8(toString((YEAR(p.DateTimeValue) + toInt32(1))), toUInt32(toInt32(4)), '0'), '-10-01'), toUInt8(7)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	MONTH(t.c1) = toInt32(10)

