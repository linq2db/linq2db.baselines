BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.Value1 IN (2, 3, 4)

