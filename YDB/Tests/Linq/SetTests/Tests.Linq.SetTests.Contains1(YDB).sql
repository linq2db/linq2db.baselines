-- YDB Ydb

$CTE_1 = 	SELECT
		a_Parent.ParentID as ParentID
	FROM
		Child c_1
			LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
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

