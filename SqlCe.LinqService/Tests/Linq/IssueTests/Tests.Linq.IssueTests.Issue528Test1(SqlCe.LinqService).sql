BeforeExecute
-- SqlCe

SELECT
	[m_1].[FirstName],
	[d].[FirstName] as [FirstName_1],
	[d].[PersonID] as [ID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t1].[FirstName]
		FROM
			[Person] [t1]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[FirstName] = [d].[FirstName]

BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

