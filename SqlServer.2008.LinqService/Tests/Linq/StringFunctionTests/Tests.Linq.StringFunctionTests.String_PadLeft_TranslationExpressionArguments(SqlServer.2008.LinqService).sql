BeforeExecute
-- SqlServer.2008

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			CASE
				WHEN LEN([p].[FirstName]) < [p].[PersonID] THEN REPLICATE(N'.', [p].[PersonID] - LEN([p].[FirstName])) + [p].[FirstName]
				ELSE [p].[FirstName]
			END as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> N''

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

