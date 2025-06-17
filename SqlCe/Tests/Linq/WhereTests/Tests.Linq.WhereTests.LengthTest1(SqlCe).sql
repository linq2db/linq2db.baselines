BeforeExecute
-- SqlCe

SELECT
	[nm].[MiddleName]
FROM
	(
		SELECT
			LEN([p].[MiddleName] + '.') - 1 as [Length_1],
			[p].[MiddleName]
		FROM
			[Person] [p]
	) [nm]
WHERE
	[nm].[Length_1] <> 0 OR [nm].[Length_1] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

