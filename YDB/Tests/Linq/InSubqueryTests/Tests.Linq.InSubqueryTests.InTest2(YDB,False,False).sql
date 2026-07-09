-- YDB Ydb
$CTE_1 = 	SELECT
		p.Value1 as Value1
	FROM
		Parent p
	WHERE
		p.Value1 IS NOT NULL
;

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID,
	c_1.GrandChildID as GrandChildID
FROM
	GrandChild c_1
WHERE
	c_1.ParentID IS NOT NULL AND c_1.ParentID IN (
		SELECT
			t1.Value1
		FROM
			$CTE_1 t1
		WHERE
			t1.Value1 IS NOT NULL
	)

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.ChildID as ChildID,
	t1.GrandChildID as GrandChildID
FROM
	GrandChild t1

-- YDB Ydb
SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

