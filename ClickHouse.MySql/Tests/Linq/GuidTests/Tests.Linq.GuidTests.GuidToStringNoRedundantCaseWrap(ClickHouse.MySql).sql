-- ClickHouse.MySql ClickHouse

SELECT
	lowerUTF8(toString(t.Id))
FROM
	TableWithGuid t

-- ClickHouse.MySql ClickHouse

SELECT
	t.Id
FROM
	TableWithGuid t
WHERE
	lowerUTF8(toString(t.Id)) = 'x'

