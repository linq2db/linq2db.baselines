-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t."ID"
FROM
	test_in_1 t
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			test_in_2 p
		WHERE
			t."ID" = p."ID"
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_1 t1

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

