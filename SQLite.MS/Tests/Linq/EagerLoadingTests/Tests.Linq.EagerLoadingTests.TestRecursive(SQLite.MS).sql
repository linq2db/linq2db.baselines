BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @masterFilter  -- Int32
SET     @masterFilter = 5

SELECT
	[m_1].[DetailId],
	[m_1].[Id1],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId],
			[t1].[Id1]
		FROM
			(
				SELECT DISTINCT
					[master_1].[Id1]
				FROM
					[MasterClass] [master_1]
				WHERE
					[master_1].[Id1] > @masterFilter
			) [t1]
				INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [t1].[Id1]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [d_1].[DetailId] = [m_1].[DetailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @masterFilter  -- Int32
SET     @masterFilter = 5

SELECT
	[m_1].[DetailId],
	[m_1].[Id1],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId],
			[t1].[Id1]
		FROM
			(
				SELECT DISTINCT
					[master_1].[Id1]
				FROM
					[MasterClass] [master_1]
				WHERE
					[master_1].[Id1] > @masterFilter
			) [t1]
				INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [t1].[Id1]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [m_1].[DetailId] = [d_1].[DetailId]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @masterFilter  -- Int32
SET     @masterFilter = 5

SELECT
	[m_1].[Id1],
	[d].[DetailId]
FROM
	(
		SELECT DISTINCT
			[master_1].[Id1]
		FROM
			[MasterClass] [master_1]
		WHERE
			[master_1].[Id1] > @masterFilter
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite
DECLARE @masterFilter  -- Int32
SET     @masterFilter = 5

SELECT
	[master_1].[Id1]
FROM
	[MasterClass] [master_1]
WHERE
	[master_1].[Id1] > @masterFilter

