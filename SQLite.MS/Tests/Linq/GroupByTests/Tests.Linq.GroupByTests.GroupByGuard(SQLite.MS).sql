BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[gr].[Gender],
	COUNT(*)
FROM
	[Person] [gr]
GROUP BY
	[gr].[Gender]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[t1].[Gender]
FROM
	[Person] [t1]
GROUP BY
	[t1].[Gender]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[ID],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t2].[ID]
		FROM
			(
				SELECT
					[t1].[PersonID] as [ID]
				FROM
					[Person] [t1]
				GROUP BY
					[t1].[PersonID]
			) [t2]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[ID] = [d].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID]
FROM
	[Person] [t1]
GROUP BY
	[t1].[PersonID]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[ID],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t2].[ID]
		FROM
			(
				SELECT
					[t1].[PersonID] as [ID]
				FROM
					[Person] [t1]
				GROUP BY
					[t1].[PersonID]
			) [t2]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[ID] = [d].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[PersonID]
FROM
	[Person] [t1]
GROUP BY
	[t1].[PersonID]

