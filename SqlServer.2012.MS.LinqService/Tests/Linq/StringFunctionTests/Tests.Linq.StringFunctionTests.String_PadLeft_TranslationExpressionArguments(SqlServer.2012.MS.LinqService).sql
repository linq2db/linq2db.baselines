BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			IIF(LEN([p].[FirstName]) < [p].[PersonID], REPLICATE(N'.', [p].[PersonID] - LEN([p].[FirstName])) + [p].[FirstName], [p].[FirstName]) as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> N''

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

