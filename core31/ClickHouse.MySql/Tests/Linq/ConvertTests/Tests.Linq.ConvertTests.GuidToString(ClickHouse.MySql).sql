BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.GuidValue
FROM
	LinqDataTypes t
WHERE
	lowerUTF8(toString(t.GuidValue)) = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

