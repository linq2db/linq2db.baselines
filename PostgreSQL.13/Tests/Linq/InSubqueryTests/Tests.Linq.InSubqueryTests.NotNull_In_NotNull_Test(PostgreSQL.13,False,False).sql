BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID"
FROM
	test_in_2 t1

