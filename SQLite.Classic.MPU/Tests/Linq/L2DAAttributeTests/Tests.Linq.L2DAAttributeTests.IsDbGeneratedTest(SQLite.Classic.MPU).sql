﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
BeginTransaction
BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @PersonID  -- Int32
SET     @PersonID = 0
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'Test'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Test'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[PersonID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@PersonID,
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 0

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] = @cond

