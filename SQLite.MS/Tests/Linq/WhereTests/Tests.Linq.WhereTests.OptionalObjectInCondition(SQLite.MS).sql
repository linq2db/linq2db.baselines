﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @FirstName NVarChar(1) -- String
SET     @FirstName = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @FirstName NVarChar(1) -- String
SET     @FirstName = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @FirstName

