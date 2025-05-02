BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 20

SELECT
	[m_1].[DetailId],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId]
		FROM
			(
				SELECT
					*
				FROM
					[MasterClass] [t1]
				LIMIT @p
			) [t2]
				CROSS JOIN [DetailClass] [d]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [d_1].[DetailId] = [m_1].[DetailId]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 20

SELECT
	[m_1].[DetailId],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId]
		FROM
			(
				SELECT
					*
				FROM
					[MasterClass] [t1]
				LIMIT @p
			) [t2]
				CROSS JOIN [DetailClass] [d]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [m_1].[DetailId] = [d_1].[DetailId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 20

SELECT
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT
			*
		FROM
			[MasterClass] [t1]
		LIMIT @p
	) [m_1]
		CROSS JOIN [DetailClass] [d]

