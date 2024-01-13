BeforeExecute
-- SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

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
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	Cast(3 as NVarChar(255))
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = Cast(Length([t1].[Diagnosis]) as NVarChar(255))

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @i  -- Int32
SET     @i = 4
DECLARE @i_1  -- Int32
SET     @i_1 = 1

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	Cast(@i as NVarChar(255))
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = Cast((Length([t1].[Diagnosis]) + @i_1) as NVarChar(255))

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @i  -- Int32
SET     @i = 5
DECLARE @i_1  -- Int32
SET     @i_1 = 2

INSERT INTO [Patient] AS [t1]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	Cast(@i as NVarChar(255))
)
ON CONFLICT ([PersonID]) DO UPDATE SET
	[Diagnosis] = Cast((Length([t1].[Diagnosis]) + @i_1) as NVarChar(255))

BeforeExecute
-- SQLite.Classic SQLite
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

