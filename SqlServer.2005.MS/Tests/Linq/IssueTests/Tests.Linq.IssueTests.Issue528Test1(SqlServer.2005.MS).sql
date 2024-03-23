BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[FirstName],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[_].[FirstName]
		FROM
			[Person] [_]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[FirstName] = [d].[FirstName]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[FirstName]
FROM
	[Person] [_]
GROUP BY
	[_].[FirstName]

