-- YDB Ydb

$CTE_1 = 	SELECT
		t1.ParentID as ParentID
	FROM
		(
			SELECT
				MAX(g_1.ChildID) as Max_1,
				g_1.ParentID as ParentID
			FROM
				Child g_1
			GROUP BY
				g_1.ParentID
		) t1
	ORDER BY
		t1.Max_1 DESC
	LIMIT 2
;

SELECT
	t.ParentID as ParentID,
	t.ChildID as ChildID
FROM
	Child t
WHERE
	t.ParentID IN (
		SELECT
			t2.ParentID
		FROM
			$CTE_1 t2
	)

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID
FROM
	Child t1

