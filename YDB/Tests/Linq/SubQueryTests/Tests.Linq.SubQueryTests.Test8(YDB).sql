-- YDB Ydb

$CTE_1 = 	SELECT
		p.ParentID as ParentID
	FROM
		Parent p
	WHERE
		p.ParentID = 1
;

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

$CTE_1 = 	SELECT
		p.ParentID as ParentID
	FROM
		Parent p
	WHERE
		p.ParentID = 2
;

SELECT
	c_1.ParentID as ParentID,
	c_1.ChildID as ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)

