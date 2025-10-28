BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN Length([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE [p].[FirstName] || REPLACE(HEX(ZEROBLOB((6 - Length([p].[FirstName])))), '00', ' ')
	END || '123' = 'John  123' AND
	[p].[PersonID] = 1

