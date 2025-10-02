BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."PK",
	t1."ID"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."PK",
	t1."ID"
FROM
	test_in_2 t1

