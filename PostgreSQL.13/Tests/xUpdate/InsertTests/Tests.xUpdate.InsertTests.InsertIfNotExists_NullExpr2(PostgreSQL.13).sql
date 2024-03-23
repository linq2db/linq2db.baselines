BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_insert_or_replace

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS test_insert_or_replace
(
	id         Int  NOT NULL,
	name       text     NULL,
	created_by text     NULL,
	updated_by text     NULL,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'test'

INSERT INTO test_insert_or_replace AS t1
(
	id,
	name
)
VALUES
(
	:Id,
	:Name
)
ON CONFLICT (id) DO NOTHING

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'test'

INSERT INTO test_insert_or_replace AS t1
(
	id,
	name
)
VALUES
(
	:Id,
	:Name
)
ON CONFLICT (id) DO NOTHING

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS test_insert_or_replace

