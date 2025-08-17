BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			IIF(LEN([p].[FirstName] + N'.') - 1 >= [p].[PersonID], [p].[FirstName], REPLICATE(N'.', [p].[PersonID] - (LEN([p].[FirstName] + N'.') - 1)) + [p].[FirstName]) as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> N''

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

