BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[FirstName],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[t1].[FirstName]
		FROM
			(
				SELECT
					[g_1].[FirstName]
				FROM
					[Person] [g_1]
				GROUP BY
					[g_1].[FirstName]
			) [t1]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[FirstName] = [d].[FirstName]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[FirstName]
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]

