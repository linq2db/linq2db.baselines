BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[FirstName],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[g_1].[FirstName]
		FROM
			[Person] [g_1]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[FirstName] = [d].[FirstName]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_1].[FirstName]
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]

