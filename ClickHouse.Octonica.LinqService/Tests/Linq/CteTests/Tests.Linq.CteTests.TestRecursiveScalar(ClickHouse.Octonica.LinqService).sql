BeforeExecute
-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE MY_CTE AS
(
	SELECT
		t1.ChildID as field
	FROM
		(
			SELECT
				c_1.ChildID as ChildID
			FROM
				Child c_1
			LIMIT 1
		) t1
	UNION ALL
	SELECT
		t2.ChildID + 1 as field
	FROM
		Child t2
			INNER JOIN MY_CTE ct ON ct.field = t2.ChildID + 1
)
SELECT
	t3.field
FROM
	MY_CTE t3

