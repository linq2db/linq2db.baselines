-- ClickHouse.Driver ClickHouse

WITH RECURSIVE MY_CTE AS
(
	SELECT
		gc1.ChildID as ChildID,
		gc1.GrandChildID as ParentID,
		gc1.GrandChildID as GrandChildID
	FROM
		GrandChild gc1
	UNION ALL
	SELECT
		ct.ChildID as ChildID,
		ct.ParentID as ParentID,
		ct.ChildID + 1 as GrandChildID
	FROM
		GrandChild t1
			INNER JOIN Parent p ON p.ParentID = t1.ParentID
			INNER JOIN MY_CTE ct ON ct.ChildID = t1.ChildID
	WHERE
		ct.GrandChildID <= 10
)
SELECT
	t2.ChildID,
	t2.ParentID,
	t2.GrandChildID
FROM
	MY_CTE t2

