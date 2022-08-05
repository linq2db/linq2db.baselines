﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = Cast(Length([Patient].[Diagnosis]) as NVarChar(11))
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
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

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	[Patient]
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @id

