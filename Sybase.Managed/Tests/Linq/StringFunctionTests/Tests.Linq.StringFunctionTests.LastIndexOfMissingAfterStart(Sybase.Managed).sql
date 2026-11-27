-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('x', Substring([p].[FirstName], 2, Len([p].[FirstName]))) = 0 OR CHARINDEX('x', Substring([p].[FirstName], 2, Len([p].[FirstName]))) = -1
			THEN -1
		ELSE CHAR_LENGTH([p].[FirstName]) - CharIndex('x', Reverse(Substring([p].[FirstName], 2, CHAR_LENGTH([p].[FirstName]) - 1)))
	END
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- Sybase.Managed Sybase
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

