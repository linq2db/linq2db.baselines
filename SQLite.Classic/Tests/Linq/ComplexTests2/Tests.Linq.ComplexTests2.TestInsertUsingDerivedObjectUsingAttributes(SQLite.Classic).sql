﻿BeforeExecute
-- SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @FirstName NVarChar(21) -- String
SET     @FirstName = 'test_inherited_insert'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'test'
DECLARE @MiddleName NVarChar(4) -- String
SET     @MiddleName = 'test'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'
DECLARE @ID  -- Int32
SET     @ID = 5

UPDATE
	[Person]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName,
	[Gender] = @Gender
WHERE
	[Person].[PersonID] = @ID

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = 'test_inherited_insert'
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @ID

