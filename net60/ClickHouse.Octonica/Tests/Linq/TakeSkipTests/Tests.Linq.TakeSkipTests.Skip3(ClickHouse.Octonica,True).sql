BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ChildID >= toInt32(0) AND ch.ChildID <= toInt32(100)
ORDER BY
	ch.ParentID,
	ch.ChildID
LIMIT toInt32(3), 18446744073709551615

