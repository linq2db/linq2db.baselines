-- YDB Ydb
DECLARE $n Int32
SET     $n = 1

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
	p.ParentID + $n IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)

