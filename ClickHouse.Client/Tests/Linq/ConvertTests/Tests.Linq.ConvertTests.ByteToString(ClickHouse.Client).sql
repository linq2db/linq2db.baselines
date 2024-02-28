BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			toString(toUInt8(t.ID)) as c1
		FROM
			LinqDataTypes t
	) p
WHERE
	CHAR_LENGTH(p.c1) > toInt32(0)

