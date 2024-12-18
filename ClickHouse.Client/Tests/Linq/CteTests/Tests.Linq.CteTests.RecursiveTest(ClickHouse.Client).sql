BeforeExecute
-- ClickHouse.Client ClickHouse

WITH RECURSIVE MY_CTE AS
(
	SELECT
		gc1.ChildID,
		gc1.GrandChildID as ParentID,
		gc1.GrandChildID
	FROM
		GrandChild gc1
	UNION ALL
	SELECT
		ct.ChildID as ChildID,
		ct.ParentID as ParentID,
		ct.ChildID + 1 as GrandChildID
	FROM
		GrandChild gc
			INNER JOIN Parent p ON p.ParentID = gc.ParentID AND gc.ParentID IS NOT NULL
			INNER JOIN MY_CTE ct ON ct.ChildID = gc.ChildID AND gc.ChildID IS NOT NULL
	WHERE
		ct.GrandChildID <= 10 AND ct.GrandChildID IS NOT NULL
)
SELECT
	t1.ChildID,
	t1.ParentID,
	t1.GrandChildID
FROM
	MY_CTE t1

