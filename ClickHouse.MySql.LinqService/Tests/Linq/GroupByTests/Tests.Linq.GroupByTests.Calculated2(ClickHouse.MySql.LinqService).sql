BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.c1
FROM
	(
		SELECT
			concat(g_2.c1, '2') as c1
		FROM
			(
				SELECT
					CASE
						WHEN g_1.ParentID > 2 THEN CASE
							WHEN g_1.ParentID > 3 THEN '1'
							ELSE '2'
						END
						ELSE '3'
					END as c1
				FROM
					Child g_1
			) g_2
		GROUP BY
			g_2.c1
	) p
WHERE
	p.c1 = '22'

