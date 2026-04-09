-- SqlCe

SELECT
	[s].[PersonID] as [ID],
	CASE
		WHEN LEN([s].[FirstName] + '.') - 1 >= [s].[PersonID] THEN [s].[FirstName]
		ELSE REPLICATE('.', [s].[PersonID] - (LEN([s].[FirstName] + '.') - 1)) + [s].[FirstName]
	END as [FirstName]
FROM
	[Person] [s]
WHERE
	CASE
		WHEN LEN([s].[FirstName] + '.') - 1 >= [s].[PersonID] THEN [s].[FirstName]
		ELSE REPLICATE('.', [s].[PersonID] - (LEN([s].[FirstName] + '.') - 1)) + [s].[FirstName]
	END <> ''

-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

