-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('x', Substring([p].[FirstName], 10, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('x', Substring([p].[FirstName], 10, Len([p].[FirstName]))) + 9
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

