-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar -- String
SET     @Name = NULL

INSERT INTO SkipOnInsertFluent
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
	SkipOnInsertFluent t
WHERE
	t.Id = 1

