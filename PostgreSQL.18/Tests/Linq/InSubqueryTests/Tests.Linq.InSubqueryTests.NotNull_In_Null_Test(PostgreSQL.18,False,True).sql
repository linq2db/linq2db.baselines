-- PostgreSQL.18 PostgreSQL

SELECT
	t."PK",
	t."ID"
FROM
	test_in_1 t
WHERE
	t."ID" IN (
		SELECT
			p."ID"
		FROM
			test_in_2 p
	)

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."PK",
	t1."ID"
FROM
	test_in_1 t1

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."PK",
	t1."ID",
	t1."GV"
FROM
	test_in_2 t1

