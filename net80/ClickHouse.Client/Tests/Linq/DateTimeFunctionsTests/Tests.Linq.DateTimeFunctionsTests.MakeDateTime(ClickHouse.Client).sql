BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.c1
FROM
	(
		SELECT
			toDateTime64(concat('2010-', leftPadUTF8(toString(p.ID), toUInt32(toInt32(2)), '0'), '-01'), toUInt8(7)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	YEAR(t.c1) = toInt32(2010)

