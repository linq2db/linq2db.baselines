-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15

INSERT INTO SkipCustomValuesTable
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
	SkipCustomValuesTable t
WHERE
	t.Id = 1

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'

INSERT INTO SkipCustomValuesTable
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
	SkipCustomValuesTable t
WHERE
	t.Id = 2

