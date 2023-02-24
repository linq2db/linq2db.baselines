BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	sumOrNull(t1.Value1),
	SUM(t1.Value1)
FROM
	Parent t1
GROUP BY
	t1.ParentID

