-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Paul'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 14

INSERT INTO SkipOnInsertTable
(
	Id,
	Name,
	Age
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Informix.DB2 Informix
SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 1

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Mary'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15

INSERT INTO SkipOnInsertTable
(
	Id,
	Name,
	Age
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- Informix.DB2 Informix
SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnInsertTable t
WHERE
	t.Id = 2

