﻿BeforeExecute
-- SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

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
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'
DECLARE @PersonID  -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @PersonID  -- Int32
SET     @PersonID = 5
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc0'

INSERT INTO [Patient]
(
	[PersonID],
	[Diagnosis]
)
VALUES
(
	@PersonID,
	@Diagnosis
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc1'
DECLARE @PersonID  -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Diagnosis NVarChar(4) -- String
SET     @Diagnosis = 'abc2'
DECLARE @PersonID  -- Int32
SET     @PersonID = 5

UPDATE
	[Patient]
SET
	[Diagnosis] = @Diagnosis
WHERE
	[Patient].[PersonID] = @PersonID

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	[Patient]
WHERE
	[Patient].[PersonID] = @id

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @id  -- Int32
SET     @id = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @id

