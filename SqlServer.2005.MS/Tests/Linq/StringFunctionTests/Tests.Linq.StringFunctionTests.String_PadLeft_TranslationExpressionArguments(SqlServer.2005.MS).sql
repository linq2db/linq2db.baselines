-- SqlServer.2005.MS SqlServer.2005

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			CASE
				WHEN LEN([p].[FirstName] + N'.') - 1 >= [p].[PersonID] THEN [p].[FirstName]
				ELSE REPLICATE(N'.', [p].[PersonID] - (LEN([p].[FirstName] + N'.') - 1)) + [p].[FirstName]
			END as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> N''

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

