BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	maxOrNull(ch.ChildID)
FROM
	Child ch
GROUP BY
	ch.ChildID

