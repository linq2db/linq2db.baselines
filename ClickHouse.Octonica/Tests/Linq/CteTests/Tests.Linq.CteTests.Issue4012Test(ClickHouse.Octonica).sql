BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		t1.ParentID,
		t1.ChildID
	FROM
		Child t1
	UNION ALL
	SELECT
		t2.ParentID as ParentID,
		t2.ChildID as ChildID
	FROM
		Child t2
			INNER JOIN cte c2 ON t2.ChildID = c2.ParentID
),
cte0 AS
(
	SELECT
		t3.ParentID,
		t3.ChildID
	FROM
		Child t3
	UNION ALL
	SELECT
		t4.ParentID as ParentID,
		t4.ChildID as ChildID
	FROM
		Child t4
			INNER JOIN cte0 c2_1 ON t4.ParentID = c2_1.ChildID
)
SELECT
	t5.ParentID,
	t5.ChildID
FROM
	cte t5
UNION DISTINCT
SELECT
	t6.ParentID as ParentID,
	t6.ChildID as ChildID
FROM
	cte0 t6

