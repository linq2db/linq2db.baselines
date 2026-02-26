-- SqlCe

SELECT
	[x_1].[MiddleName],
	[x_1].[LastName]
FROM
	(
		SELECT DISTINCT
			[x].[MiddleName],
			CASE
				WHEN [x].[LastName] = 'Pupkin' THEN NULL
				ELSE [x].[LastName]
			END as [LastName]
		FROM
			[Person] [x]
	) [x_1]
ORDER BY
	Coalesce([x_1].[MiddleName], '-2') DESC

-- SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

