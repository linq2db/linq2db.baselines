-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL
DECLARE @Age Integer(4) -- Int32
SET     @Age = 2

INSERT INTO SkipOnUpdateFluent
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
	SkipOnUpdateFluent t
WHERE
	t.Id = 1

-- Informix.DB2 Informix
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 18
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	SkipOnUpdateFluent t1
SET
	Name = @Name,
	Age = @Age
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
SELECT FIRST 1
	t.Id,
	t.Name,
	t.Age
FROM
	SkipOnUpdateFluent t
WHERE
	t.Id = 1

-- Informix.DB2 Informix
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	SkipOnUpdateFluent t1
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
	SkipOnUpdateFluent t
WHERE
	t.Id = 1

