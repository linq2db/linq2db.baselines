BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."PK",
	t."ID",
	t."GV"
FROM
	test_in_1 t
WHERE
	t."ID" IS NULL OR t."ID" NOT IN (
		SELECT
			p."ID"
		FROM
			test_in_2 p
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."PK",
	t1."ID",
	t1."GV"
FROM
	test_in_1 t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."PK",
	t1."ID"
FROM
	test_in_2 t1

