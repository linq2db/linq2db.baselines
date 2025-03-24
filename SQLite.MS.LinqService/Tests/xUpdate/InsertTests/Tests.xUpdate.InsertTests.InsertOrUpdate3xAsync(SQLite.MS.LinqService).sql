BeforeExecute
--  SQLite.MS SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
--  SQLite.MS SQLite
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
--  SQLite.MS SQLite

SELECT last_insert_rowid()

