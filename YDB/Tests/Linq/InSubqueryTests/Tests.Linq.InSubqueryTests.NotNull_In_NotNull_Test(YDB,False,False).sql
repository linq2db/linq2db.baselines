-- YDB Ydb

$CTE_1 = 	SELECT
		p.ID as ID
	FROM
		test_in_2 p
;

SELECT
	t.PK as PK,
	t.ID as ID
FROM
	test_in_1 t
WHERE
	t.ID IN (
		SELECT
			t1.ID
		FROM
			$CTE_1 t1
	)

-- YDB Ydb

SELECT
	t1.PK as PK,
	t1.ID as ID
FROM
	test_in_1 t1

-- YDB Ydb

SELECT
	t1.PK as PK,
	t1.ID as ID
FROM
	test_in_2 t1

