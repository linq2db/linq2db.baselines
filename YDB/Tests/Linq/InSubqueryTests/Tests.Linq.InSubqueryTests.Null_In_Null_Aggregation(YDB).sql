-- YDB Ydb

$CTE_1 = 	SELECT
		MIN(g_1.ID) as In_1
	FROM
		test_in_2 g_1
	GROUP BY
		g_1.GV
;

SELECT
	t.PK as PK,
	t.ID as ID,
	t.GV as GV
FROM
	test_in_1 t
WHERE
	t.ID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			$CTE_1 t1
		WHERE
			t1.In_1 IS NULL
	) OR
	t.ID IS NOT NULL AND t.ID IN (
		SELECT
			t2.In_1
		FROM
			$CTE_1 t2
		WHERE
			t2.In_1 IS NOT NULL
	)

-- YDB Ydb

SELECT
	t1.PK as PK,
	t1.ID as ID,
	t1.GV as GV
FROM
	test_in_1 t1

-- YDB Ydb

SELECT
	t1.PK as PK,
	t1.ID as ID,
	t1.GV as GV
FROM
	test_in_2 t1

