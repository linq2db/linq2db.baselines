-- YDB Ydb

$CTE_1 = 	SELECT
		t1.ParentID as ParentID
	FROM
		(
			SELECT
				v.ParentID as ParentID
			FROM
				Parent v
			LIMIT 100
		) t1
;

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID IN (
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

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

