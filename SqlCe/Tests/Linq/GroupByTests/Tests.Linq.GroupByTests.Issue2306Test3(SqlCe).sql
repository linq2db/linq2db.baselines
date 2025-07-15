BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[PersonID] as [Key_1],
	[m_1].[FirstName],
	[m_1].[PersonID] as [ID],
	[m_1].[LastName],
	[m_1].[MiddleName],
	[m_1].[Gender]
FROM
	[Person] [m_1]

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
	[m_1].[PersonID] as [Key_1],
	[m_1].[FirstName],
	[m_1].[PersonID] as [ID],
	[m_1].[LastName],
	[m_1].[MiddleName],
	[m_1].[Gender]
FROM
	[Person] [m_1]

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

