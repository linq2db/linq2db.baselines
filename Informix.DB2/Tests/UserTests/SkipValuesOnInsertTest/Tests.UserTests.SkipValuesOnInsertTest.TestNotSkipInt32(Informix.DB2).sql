-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 55

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
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 50

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

