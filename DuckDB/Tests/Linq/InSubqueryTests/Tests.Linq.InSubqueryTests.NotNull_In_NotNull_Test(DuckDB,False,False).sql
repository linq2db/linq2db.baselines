-- DuckDB

SELECT
	t.PK,
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IN (
		SELECT
			p.ID
		FROM
			test_in_2 p
	)

-- DuckDB

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_1 t1

-- DuckDB

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_2 t1

