BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t.ParentID,
	t.ChildID
FROM
	Child t
UNION DISTINCT
SELECT
	t_1.ParentID,
	t_1.ChildID
FROM
	Child t_1
WHERE
	t_1.ChildID < toInt32(10)

