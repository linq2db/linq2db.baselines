-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
;

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID + 1 IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)

