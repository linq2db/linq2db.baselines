BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy Text(10) -- String
SET     @CreatedBy = 'TEST_USER1'
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL

INSERT INTO test_insert_or_replace AS t1
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
ON CONFLICT (id) DO UPDATE SET
	name = :Name,
	updated_by = :UpdatedBy

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.name,
	t1.created_by,
	t1.updated_by
FROM
	test_insert_or_replace t1
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Test2'
DECLARE @CreatedBy Text(10) -- String
SET     @CreatedBy = 'TEST_USER1'
DECLARE @UpdatedBy Text(10) -- String
SET     @UpdatedBy = 'TEST_USER1'

INSERT INTO test_insert_or_replace AS t1
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
ON CONFLICT (id) DO UPDATE SET
	name = :Name,
	updated_by = :UpdatedBy

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.id,
	t1.name,
	t1.created_by,
	t1.updated_by
FROM
	test_insert_or_replace t1
LIMIT 2

