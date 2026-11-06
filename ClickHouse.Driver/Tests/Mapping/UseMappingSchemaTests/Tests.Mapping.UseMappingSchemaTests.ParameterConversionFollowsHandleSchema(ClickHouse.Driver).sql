-- ClickHouse.Driver ClickHouse
SELECT
	p.ParentID
FROM
	Parent p
WHERE
	toInt64(p.ParentID) = 2

