BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(ch.ParentID)
FROM
	Child ch
GROUP BY
	ch.ParentID

