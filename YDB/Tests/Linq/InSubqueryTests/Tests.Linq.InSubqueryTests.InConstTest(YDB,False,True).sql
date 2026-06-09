-- YDB Ydb

$CTE_1 = 	SELECT
		p.Value1 as Value1
	FROM
		Parent p
;

SELECT
	c_1.ParentID as ParentID,
	c_1.Value1 as Value1
FROM
	Parent c_1
WHERE
	1 IN (
		SELECT
			t1.Value1
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.ParentID as ParentID,
	t1.Value1 as Value1
FROM
	Parent t1

