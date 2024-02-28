BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE '%Joh%' ESCAPE '~' OR NOT InStr([p].[FirstName], 'Joh') > 0) AND
	[p].[PersonID] = 1

