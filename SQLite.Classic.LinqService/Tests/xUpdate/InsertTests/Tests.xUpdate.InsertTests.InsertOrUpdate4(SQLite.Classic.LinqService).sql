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

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast(Length([Patient].[Diagnosis]) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @diagnosis  -- Int32
SET     @diagnosis = 3

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	Cast(@diagnosis as NVarChar(11))
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @i  -- Int32
SET     @i = 1
DECLARE @id  -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast((Length([Patient].[Diagnosis]) + @i) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @i  -- Int32
SET     @i = 2
DECLARE @id  -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast((Length([Patient].[Diagnosis]) + @i) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p].[PersonID],
	[p].[Diagnosis]
FROM
	[Patient] [p]
WHERE
	[p].[PersonID] = @id
LIMIT @take

