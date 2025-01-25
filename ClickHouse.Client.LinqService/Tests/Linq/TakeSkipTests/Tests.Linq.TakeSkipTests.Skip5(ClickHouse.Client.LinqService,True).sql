BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC,
	t1.ParentID + 1
LIMIT 3, 18446744073709551615

