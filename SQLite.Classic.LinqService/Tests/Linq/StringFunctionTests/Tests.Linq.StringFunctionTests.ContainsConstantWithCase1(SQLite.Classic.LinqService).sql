BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE '%Joh%' ESCAPE '~' OR InStr([p].[FirstName], 'Joh') <= 0) AND
	[p].[PersonID] = 1

