BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			(
				SELECT
					minOrNull(g_1.ID) as In_1
				FROM
					test_in_2 g_1
				GROUP BY
					g_1.GV
			) t1
		WHERE
			t1.In_1 IS NULL
	) OR
	t.ID IS NOT NULL AND t.ID IN (
		SELECT
			minOrNull(g_2.ID)
		FROM
			test_in_2 g_2
		GROUP BY
			g_2.GV
	)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID
FROM
	test_in_1 t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.GV
FROM
	test_in_2 t1

