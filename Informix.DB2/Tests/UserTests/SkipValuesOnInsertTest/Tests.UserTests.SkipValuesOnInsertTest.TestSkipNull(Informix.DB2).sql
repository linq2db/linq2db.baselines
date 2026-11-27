-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO SkipOnInsertNulls
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
	SkipOnInsertNulls t
WHERE
	t.Id = 1

