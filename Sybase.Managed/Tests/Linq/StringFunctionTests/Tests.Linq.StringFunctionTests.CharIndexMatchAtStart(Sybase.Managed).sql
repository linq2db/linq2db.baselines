-- Sybase.Managed Sybase
SELECT
	CASE
		WHEN CHARINDEX('J', Substring([p].[FirstName], 1, Len([p].[FirstName]))) = 0
			THEN 0
		ELSE CHARINDEX('J', Substring([p].[FirstName], 1, Len([p].[FirstName])))
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

