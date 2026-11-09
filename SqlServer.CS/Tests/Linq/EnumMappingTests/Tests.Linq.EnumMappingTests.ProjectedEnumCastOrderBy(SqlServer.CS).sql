-- SqlServer.CS SqlServer.2025
SELECT
	[p].[PersonID],
	[p].[Gender]
FROM
	[Person] [p]
ORDER BY
	[p].[Gender],
	[p].[PersonID]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

