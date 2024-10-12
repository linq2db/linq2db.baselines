BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_insert_or_replace

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS test_insert_or_replace
(
	id         Int  NOT NULL,
	name       text     NULL,
	created_by text     NULL,
	updated_by text     NULL,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO test_insert_or_replace AS t1
(
	id,
	name
)
VALUES
(
	1,
	'test'
)
ON CONFLICT (id) DO NOTHING

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO test_insert_or_replace AS t1
(
	id,
	name
)
VALUES
(
	1,
	'test'
)
ON CONFLICT (id) DO NOTHING

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS test_insert_or_replace

