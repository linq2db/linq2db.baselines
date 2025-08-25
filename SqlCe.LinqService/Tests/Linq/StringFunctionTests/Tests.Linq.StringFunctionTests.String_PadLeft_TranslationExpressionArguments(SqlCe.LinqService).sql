BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			CASE
				WHEN LEN([p].[FirstName] + '.') - 1 >= [p].[PersonID] THEN [p].[FirstName]
				ELSE REPLICATE('.', [p].[PersonID] - (LEN([p].[FirstName] + '.') - 1)) + [p].[FirstName]
			END as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> ''

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

