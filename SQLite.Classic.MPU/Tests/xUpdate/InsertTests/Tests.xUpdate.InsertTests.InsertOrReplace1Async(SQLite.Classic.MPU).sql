-- SQLite.Classic.MPU SQLite.Classic SQLite
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT last_insert_rowid()

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = @Diagnosis

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id
LIMIT 2

