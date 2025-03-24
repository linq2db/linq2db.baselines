﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName NVarChar -- String
SET     @FirstName = ''

UPDATE
	[Person] INDEXED BY IX_PersonDesc
SET
	[FirstName] = @FirstName
FROM
	[Person] [p] INDEXED BY IX_PersonDesc
WHERE
	[p].[PersonID] > 1000000 AND [Person].[PersonID] = [p].[PersonID]

