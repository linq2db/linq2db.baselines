﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @FirstName NVarChar -- String
SET     @FirstName = ''

UPDATE
	[Person] INDEXED BY IX_PersonDesc
SET
	[FirstName] = @FirstName
WHERE
	[Person].[PersonID] > 1000000

