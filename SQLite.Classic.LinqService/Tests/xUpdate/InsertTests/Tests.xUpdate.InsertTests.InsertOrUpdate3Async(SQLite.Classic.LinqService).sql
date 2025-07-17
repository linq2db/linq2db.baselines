BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @i  -- Int32
SET     @i = 0

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	'abc'
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = CAST(Length([t1].[Diagnosis]) + @i AS NVarChar(11))

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @i  -- Int32
SET     @i = 1

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	'abc'
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = CAST(Length([t1].[Diagnosis]) + @i AS NVarChar(11))

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @i  -- Int32
SET     @i = 2

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	'abc'
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = CAST(Length([t1].[Diagnosis]) + @i AS NVarChar(11))

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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

