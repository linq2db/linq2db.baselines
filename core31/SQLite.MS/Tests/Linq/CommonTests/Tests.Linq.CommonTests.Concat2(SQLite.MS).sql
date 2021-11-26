BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] || ' ' || Cast(1 as NVarChar(4000)) = 'John 1'

