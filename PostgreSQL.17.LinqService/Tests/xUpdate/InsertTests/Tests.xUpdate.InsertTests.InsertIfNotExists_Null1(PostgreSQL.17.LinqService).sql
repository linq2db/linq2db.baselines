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

