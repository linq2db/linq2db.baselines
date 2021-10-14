﻿BeforeExecute
-- SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = 'John' AND [Person].[LastName] = 'Shepard'

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id2  -- Int32
SET     @id2 = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast(Length([Patient].[Diagnosis]) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@id,
	'abc'
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @i  -- Int32
SET     @i = 1
DECLARE @id2  -- Int32
SET     @id2 = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast((Length([Patient].[Diagnosis]) + @i) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id2

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @i  -- Int32
SET     @i = 2
DECLARE @id2  -- Int32
SET     @id2 = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast((Length([Patient].[Diagnosis]) + @i) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id2

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

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	[Patient]
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @id

