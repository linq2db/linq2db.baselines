-- YDB Ydb

$CTE_1 = 	SELECT
		MAX(x.ChildID) as In_1
	FROM
		Child x
	GROUP BY
		x.ParentID
;

SELECT
	x_1.ParentID as ParentID,
	x_1.ChildID as ChildID
FROM
	Child x_1
WHERE
	x_1.ChildID IN (
		SELECT
			t1.In_1
		FROM
			$CTE_1 t1
	)

