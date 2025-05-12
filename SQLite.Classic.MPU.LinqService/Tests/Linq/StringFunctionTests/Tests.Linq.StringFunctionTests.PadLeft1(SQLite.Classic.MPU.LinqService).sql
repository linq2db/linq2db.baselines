BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
		WHEN Length([p].[FirstName]) >= 6 THEN [p].[FirstName]
		ELSE SUBSTR(REPLACE(HEX(ZEROBLOB(6)), '0', ' '), 1, 6 - Length([p].[FirstName])) || [p].[FirstName]
	END = '123  John' AND
	[p].[PersonID] = 1

