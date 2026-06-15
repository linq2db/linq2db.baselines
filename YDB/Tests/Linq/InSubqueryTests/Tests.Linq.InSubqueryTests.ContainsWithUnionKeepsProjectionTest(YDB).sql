-- YDB Ydb

$CTE_1 = 	SELECT
		p.ParentID as ParentID
	FROM
		Parent p
	WHERE
		p.ParentID <= 2
	UNION
	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
	WHERE
		c_1.ParentID >= 3
;

SELECT
	p_1.ParentID as ParentID,
	p_1.Value1 as Value1
FROM
	Parent p_1
WHERE
	p_1.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)
ORDER BY
	p_1.ParentID

