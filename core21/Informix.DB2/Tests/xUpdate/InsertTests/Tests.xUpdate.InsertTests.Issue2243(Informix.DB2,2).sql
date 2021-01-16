BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE test_insert_or_replace
(
	id         Int           NOT NULL,
	name       NVarChar(255)     NULL,
	created_by NVarChar(255) NOT NULL,
	updated_by NVarChar(255)     NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	test_insert_or_replace
SET
	test_insert_or_replace.name = @Name,
	test_insert_or_replace.updated_by = @UpdatedBy
WHERE
	test_insert_or_replace.id = @Id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER2'

INSERT INTO test_insert_or_replace
(
	id,
	name,
	created_by
)
VALUES
(
	@Id,
	@Name,
	@CreatedBy
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	test_insert_or_replace
SET
	test_insert_or_replace.name = @Name,
	test_insert_or_replace.updated_by = @UpdatedBy
WHERE
	test_insert_or_replace.id = @Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE test_insert_or_replace

