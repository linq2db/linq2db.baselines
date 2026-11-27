-- Informix.DB2 Informix
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	SkipOnInsertCache t1
SET
	Name = @Name
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

INSERT INTO SkipOnInsertCache
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

-- Informix.DB2 Informix
SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1

-- Informix.DB2 Informix
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	SkipOnInsertCache t1
SET
	Name = @Name
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertCache t
WHERE
	t.Id = 1

