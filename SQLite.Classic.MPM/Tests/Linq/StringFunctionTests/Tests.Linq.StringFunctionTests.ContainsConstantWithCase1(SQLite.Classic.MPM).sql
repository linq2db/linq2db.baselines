BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE '%Joh%' ESCAPE '~' OR InStr([p].[FirstName], 'Joh') <= 0) AND
	[p].[PersonID] = 1

