﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE test_insert_or_replace
(
	id         Int  NOT NULL,
	name       text     NULL,
	created_by text NOT NULL,
	updated_by text     NULL,

	CONSTRAINT "PK_test_insert_or_replace" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy Text(10) -- String
SET     @CreatedBy = 'TEST_USER3'

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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1.id,
	t1.name,
	t1.created_by,
	t1.updated_by
FROM
	test_insert_or_replace t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy Text(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
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
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1.id,
	t1.name,
	t1.created_by,
	t1.updated_by
FROM
	test_insert_or_replace t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE test_insert_or_replace

