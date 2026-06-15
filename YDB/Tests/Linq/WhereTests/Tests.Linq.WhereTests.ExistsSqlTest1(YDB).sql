-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
;

DELETE FROM
	Parent
WHERE
	Parent.ParentID + 100 IN (
		SELECT
			t1.ParentID
		FROM
			$CTE_1 t1
	)

