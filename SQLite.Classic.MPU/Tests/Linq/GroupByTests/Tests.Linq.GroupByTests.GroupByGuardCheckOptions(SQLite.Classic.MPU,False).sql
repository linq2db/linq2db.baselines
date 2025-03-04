BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
					[t1].[Gender] as [Key_1]
				FROM
					[Person] [t1]
				GROUP BY
					[t1].[Gender]
			) [t2]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[Gender]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Gender]
FROM
	[Person] [t1]
GROUP BY
	[t1].[Gender]

