-- PostgreSQL.9.3 PostgreSQL
SELECT
	1
FROM
	test_insert_or_replace t1
WHERE
	t1.id = 1

-- PostgreSQL.9.3 PostgreSQL
INSERT INTO test_insert_or_replace
(
	id,
	name
)
VALUES
(
	1,
	'test'
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	1
FROM
	test_insert_or_replace t1
WHERE
	t1.id = 1

