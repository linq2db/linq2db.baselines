BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] || ' 12') = 'John 12'

