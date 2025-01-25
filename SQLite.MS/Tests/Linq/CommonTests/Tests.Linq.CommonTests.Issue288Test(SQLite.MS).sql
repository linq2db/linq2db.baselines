BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] IS NULL
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID NVarChar(4) -- String
SET     @ID = 'John'

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = @ID
LIMIT 1

