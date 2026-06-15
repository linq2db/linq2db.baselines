-- YDB Ydb

$CTE_1 = 	SELECT
		ch.ParentID as ParentID
	FROM
		Child ch
;
$CTE_2 = 	SELECT
		ch_1.ParentID as ParentID
	FROM
		Child ch_1
;

SELECT
	t3.Key_1 as Key_1,
	t3.Sum_1 as Sum_1,
	p2.Key_1 as Key_2,
	p2.Sum_1 as Sum_2
FROM
	(
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
	) t3
		LEFT JOIN (
			SELECT
				g_2.ParentID as Key_1,
				SUM(g_2.ParentID) as Sum_1
			FROM
				Parent g_2
			WHERE
				g_2.ParentID IN (
					SELECT
						t2.ParentID
					FROM
						$CTE_2 t2
				)
			GROUP BY
				g_2.ParentID
		) p2 ON t3.Key_1 = p2.Key_1

