-- ClickHouse.Driver ClickHouse

SELECT
	e.Id,
	e.RecSrc,
	e.Value
FROM
	Entry e
WHERE
	e.RecSrc = 'default' AND e.Value = 2007

