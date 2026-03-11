-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy VarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	test_insert_or_replace t1
SET
	name = @Name,
	updated_by = @UpdatedBy
WHERE
	t1.id = @Id

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy VarChar(10) -- String
SET     @CreatedBy = 'TEST_USER3'

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

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.id,
	t1.name,
	t1.created_by,
	t1.updated_by
FROM
	test_insert_or_replace t1

-- Informix.DB2 Informix
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy VarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	test_insert_or_replace t1
SET
	name = @Name,
	updated_by = @UpdatedBy
WHERE
	t1.id = @Id

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.id,
	t1.name,
	t1.created_by,
	t1.updated_by
FROM
	test_insert_or_replace t1

