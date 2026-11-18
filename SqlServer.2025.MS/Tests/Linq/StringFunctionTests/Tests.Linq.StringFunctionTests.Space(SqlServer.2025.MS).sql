-- SqlServer.2025.MS SqlServer.2025
SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] || CAST(Space([p].[PersonID] + 1) AS NVarChar(Max)) || N'123') = N'John  123' AND
	[p].[PersonID] = 1

