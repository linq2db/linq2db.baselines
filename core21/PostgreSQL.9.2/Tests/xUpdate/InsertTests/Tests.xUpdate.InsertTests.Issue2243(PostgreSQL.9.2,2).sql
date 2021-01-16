BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE test_insert_or_replace
(
	id         Int  NOT NULL,
	name       text     NULL,
	created_by text NOT NULL,
	updated_by text     NULL,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	test_insert_or_replace
SET
	name = :Name,
	updated_by = :UpdatedBy
WHERE
	test_insert_or_replace.id = :Id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy Text(10) -- String
SET     @CreatedBy = 'TEST_USER2'

INSERT INTO test_insert_or_replace
(
	id,
	name,
	created_by
)
VALUES
(
	:Id,
	:Name,
	:CreatedBy
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy Text(10) -- String
SET     @UpdatedBy = 'TEST_USER2'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	test_insert_or_replace
SET
	name = :Name,
	updated_by = :UpdatedBy
WHERE
	test_insert_or_replace.id = :Id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE test_insert_or_replace

