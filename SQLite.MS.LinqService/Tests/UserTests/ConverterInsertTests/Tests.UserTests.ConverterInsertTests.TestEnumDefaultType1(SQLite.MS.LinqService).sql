﻿BeforeExecute
-- SQLite.MS SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.MS SQLite
DECLARE @FirstName NVarChar(3) -- String
SET     @FirstName = '123'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = '456'
DECLARE @MiddleName NVarChar(3) -- String
SET     @MiddleName = '789'
DECLARE @Gender NVarChar(1) -- String
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
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.MS SQLite
DECLARE @id  -- Int32
SET     @id = 11
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	[t].[PersonID] = @id
LIMIT @take

