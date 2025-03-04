BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[m_1].[Key_1],
	[d].[FirstName],
	[d].[PersonID],
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
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[FirstName]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

