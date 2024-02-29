BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	(p.ParentID IN (toInt32(1), toInt32(2)) OR 1 = 0)

