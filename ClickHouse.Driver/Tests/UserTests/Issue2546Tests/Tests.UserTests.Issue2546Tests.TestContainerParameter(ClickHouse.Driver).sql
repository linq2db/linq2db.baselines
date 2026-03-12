-- ClickHouse.Driver ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	Issue2546Class x
WHERE
	x.Value = 'Hello World'

