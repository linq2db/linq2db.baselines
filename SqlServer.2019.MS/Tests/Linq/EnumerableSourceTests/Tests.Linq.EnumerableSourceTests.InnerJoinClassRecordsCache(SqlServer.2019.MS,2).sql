-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(3), (4)
		) [n]([ID]) ON [p].[PersonID] = [n].[ID]

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (VALUES
			(5), (6)
		) [n]([ID]) ON [p].[PersonID] = [n].[ID]

