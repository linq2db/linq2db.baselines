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
		WHEN LENGTH([p].[FirstName]) < CAST(6 AS INTEGER) THEN SUBSTR(REPLACE(HEX(ZEROBLOB(CAST(6 AS INTEGER))), '0', '*'), 1, CAST(6 AS INTEGER) - LENGTH([p].[FirstName])) || [p].[FirstName]
		ELSE [p].[FirstName]
	END = '123**John' AND
	[p].[PersonID] = 1

