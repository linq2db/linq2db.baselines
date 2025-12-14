-- ClickHouse.Driver ClickHouse

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (1, 2, 3) OR o.ParentID = 4
LIMIT 1

