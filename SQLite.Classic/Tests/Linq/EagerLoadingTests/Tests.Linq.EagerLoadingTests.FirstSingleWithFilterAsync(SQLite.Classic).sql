BeforeExecute
BeginTransactionAsync(Serializable)
BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[m_1].[Id1],
	[d].[DetailValue]
FROM
	(
		SELECT
			[x].[Id1]
		FROM
			[MasterClass] [x]
		WHERE
			[x].[Id1] = 1
		LIMIT 1
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[x].[Id1]
FROM
	[MasterClass] [x]
WHERE
	[x].[Id1] = 1
LIMIT 1

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(Serializable)
BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[m_1].[Id1],
	[d].[DetailValue]
FROM
	(
		SELECT
			[x].[Id1]
		FROM
			[MasterClass] [x]
		WHERE
			[x].[Id1] = 1
		LIMIT 1
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[x].[Id1]
FROM
	[MasterClass] [x]
WHERE
	[x].[Id1] = 1
LIMIT 1

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(Serializable)
BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[m_1].[Id1],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			(
				SELECT
					[x].[Id1]
				FROM
					[MasterClass] [x]
				WHERE
					[x].[Id1] = 1
				LIMIT 2
			) [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[x].[Id1]
FROM
	[MasterClass] [x]
WHERE
	[x].[Id1] = 1
LIMIT 2

BeforeExecute
DisposeTransactionAsync
