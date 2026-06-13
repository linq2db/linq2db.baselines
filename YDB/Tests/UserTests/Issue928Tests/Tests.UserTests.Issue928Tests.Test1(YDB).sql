-- YDB Ydb

$CTE_1 = 	SELECT
		ch.ParentID as ParentID
	FROM
		Child ch
;

SELECT
	p1.ParentID as ParentID,
	p1.Value1 as Value1,
	p2.Key_1 as Key_1,
	p2.Sum_1 as Sum_1
FROM
	Parent p1
		LEFT JOIN (
			SELECT
				g_1.ParentID as Key_1,
				SUM(g_1.ParentID) as Sum_1
			FROM
				Parent g_1
			WHERE
				g_1.ParentID IN (
					SELECT
						t1.ParentID
					FROM
						$CTE_1 t1
				)
			GROUP BY
				g_1.ParentID
		) p2 ON p2.Key_1 = p1.ParentID

