BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 3 AS [PersonID]
			UNION ALL
			SELECT 4) [n] ON [p].[PersonID] = [n].[PersonID]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT 5 AS [PersonID]
			UNION ALL
			SELECT 6) [n] ON [p].[PersonID] = [n].[PersonID]

