-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[PersonID],
	[t1].[Taxonomy]
FROM
	[Doctor] [t1]
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonId  -- Int64
SET     @PersonId = 1

SELECT
	[d].[PersonID],
	[d].[Taxonomy],
	[a_FkDoctor0].[PersonID],
	[a_FkDoctor0].[FirstName],
	[a_FkDoctor0].[LastName],
	[a_FkDoctor0].[MiddleName],
	[a_FkDoctor0].[Gender]
FROM
	[Doctor] [d]
		INNER JOIN [Person] [a_FkDoctor0] ON [d].[PersonID] = [a_FkDoctor0].[PersonID]
WHERE
	[d].[PersonID] = @PersonId
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[MiddleName],
	[e].[Gender]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[MiddleName],
	[e].[Gender]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = -1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[MiddleName],
	[e].[Gender]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[PersonID],
	[e].[FirstName],
	[e].[LastName],
	[e].[MiddleName],
	[e].[Gender]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[PersonID],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'Empty'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'Template'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar -- String
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
SELECT
	[p].[PersonID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 6
LIMIT 2

RollbackTransaction
