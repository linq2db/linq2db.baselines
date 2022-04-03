BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName NVarChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @LastName NVarChar(11) -- String
SET     @LastName = 'LastName307'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id1  -- Int32
SET     @id1 = 5
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[PersonID],
	[_].[Gender],
	[_].[FirstName],
	[_].[MiddleName],
	[_].[LastName]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

