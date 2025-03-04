BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Key_1],
	[d].[FirstName],
	[d].[PersonID] as [ID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t2].[Key_1]
		FROM
			(
				SELECT
					[t1].[FirstName] as [Key_1]
				FROM
					[Person] [t1]
				GROUP BY
					[t1].[FirstName]
			) [t2]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[FirstName]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[FirstName] as [Key_1],
	[t1].[FirstName] as [Key_2]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

