BeforeExecute
-- SQLite.MS SQLite
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'Test'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Test'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
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
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 6

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @PersonID

