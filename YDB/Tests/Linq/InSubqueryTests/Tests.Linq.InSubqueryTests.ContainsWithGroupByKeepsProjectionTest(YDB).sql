-- YDB Ydb

$CTE_1 = 	SELECT
		t1.Key_1 as Key_1
	FROM
		(
			SELECT DISTINCT
				g_1.ParentID as Key_1
			FROM
				Child g_1
		) t1
;

SELECT
	p.ParentID as ParentID,
	p.Value1 as Value1
FROM
	Parent p
WHERE
	p.ParentID IN (
		SELECT
			t2.Key_1
		FROM
			$CTE_1 t2
	)
ORDER BY
	p.ParentID

