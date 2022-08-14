BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(ch.ParentID)
FROM
	Child ch
GROUP BY
	ch.ParentID

