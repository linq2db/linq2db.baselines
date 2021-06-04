BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE test_insert_or_replace
(
	id         Int  NOT NULL,
	name       text     NULL,
	created_by text     NULL,
	updated_by text     NULL,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	1
FROM
	test_insert_or_replace t1
WHERE
	t1.id = 1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	1
FROM
	test_insert_or_replace t1
WHERE
	t1.id = 1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS test_insert_or_replace

