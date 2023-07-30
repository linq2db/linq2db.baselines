BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toDate32(concat(leftPadUTF8(toString((toInt32(2010) + t.ID)), toUInt32(toInt32(4)), '0'), '-10-01'))
FROM
	LinqDataTypes t

