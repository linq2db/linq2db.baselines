BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	'123' || CASE
		WHEN LENGTH([p].[FirstName]) < 6 THEN SUBSTR(REPLACE(HEX(ZEROBLOB(6)), '0', ' '), 1, 6 - LENGTH([p].[FirstName])) || [p].[FirstName]
		ELSE [p].[FirstName]
	END = '123  John' AND
	[p].[PersonID] = 1

