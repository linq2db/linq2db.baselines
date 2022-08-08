BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			toDateTime64(concat(leftPadUTF8(toString(YEAR(p.DateTimeValue)), toUInt32(toInt32(4)), '0'), '-10-01 20:35:44'), toUInt8(7)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	MONTH(t.c1) = toInt32(10)

