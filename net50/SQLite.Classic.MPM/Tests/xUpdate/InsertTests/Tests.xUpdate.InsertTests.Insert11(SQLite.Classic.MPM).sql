BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Max([t].[PersonID])
FROM
	[Person] [t]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(2) -- String
SET     @Name_LastName = 'ln'

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
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 4
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p2].[PersonID],
	[p2].[Gender],
	[p2].[FirstName],
	[p2].[MiddleName],
	[p2].[LastName]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] > @id
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 4

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > @id

