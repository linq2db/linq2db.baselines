-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."PK",
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
ORDER BY
	t."PK"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."PK",
	t1."ID"
FROM
	test_in_1 t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."PK",
	t1."ID"
FROM
	test_in_2 t1

