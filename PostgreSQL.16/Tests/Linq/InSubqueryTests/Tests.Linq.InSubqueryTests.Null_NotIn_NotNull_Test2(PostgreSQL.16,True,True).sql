BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

