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
					[t1].[PersonID] as [Key_1]
				FROM
					[Person] [t1]
				GROUP BY
					[t1].[PersonID]
			) [t2]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[PersonID] as [Key_1]
FROM
	[Person] [t1]
GROUP BY
	[t1].[PersonID]

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
					[t1].[PersonID] as [Key_1]
				FROM
					[Person] [t1]
				GROUP BY
					[t1].[PersonID]
			) [t2]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[PersonID] as [Key_1]
FROM
	[Person] [t1]
GROUP BY
	[t1].[PersonID]

