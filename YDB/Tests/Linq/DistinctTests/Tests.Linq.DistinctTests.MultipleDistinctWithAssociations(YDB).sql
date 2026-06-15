-- YDB Ydb

$CTE_1 = 	SELECT DISTINCT
		a_Parent.ParentID as ParentID
	FROM
		Child c_1
			LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
;

SELECT DISTINCT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)
ORDER BY
	ParentID

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	a_Parent.ParentID as ParentID_1,
	a_Parent.Value1 as Value1
FROM
	Child t1
		LEFT JOIN Parent a_Parent ON t1.ParentID = a_Parent.ParentID

