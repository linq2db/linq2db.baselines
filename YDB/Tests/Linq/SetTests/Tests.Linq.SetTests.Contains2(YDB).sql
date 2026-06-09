-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.ParentID as ParentID
	FROM
		Child c_1
;

SELECT
	CASE
		WHEN p.ParentID IN (
			SELECT
				t1.ParentID
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1
FROM
	Parent p

