BeforeExecute
-- SqlServer.2008 (asynchronously)

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

BeforeExecute
-- SqlServer.2008 (asynchronously)

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

