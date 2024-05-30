BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	q.ParentID,
	q.Value1
FROM
	Parent q
WHERE
	q.Value1 IS NOT NULL

