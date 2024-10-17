BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ChildID > 3 OR ch.ChildID < 4
ORDER BY
	ch.ParentID,
	ch.ChildID
LIMIT 3, 18446744073709551615

