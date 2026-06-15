-- YDB Ydb

$CTE_1 = 	SELECT
		a_Parent.ParentID as ParentID
	FROM
		Child c_1
			LEFT JOIN Parent a_Parent ON c_1.ParentID = a_Parent.ParentID
;

SELECT
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

