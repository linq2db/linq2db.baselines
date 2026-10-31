-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

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
					1 as [c1]
				FROM
					[MasterClass] [t1]
				LIMIT @take
			) [t2]
				CROSS JOIN [DetailClass] [d]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [d_1].[DetailId] = [m_1].[DetailId]

-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

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
					1 as [c1]
				FROM
					[MasterClass] [t1]
				LIMIT @take
			) [t2]
				CROSS JOIN [DetailClass] [d]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [m_1].[DetailId] = [d_1].[DetailId]

-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[MasterClass] [t1]
		LIMIT @take
	) [m_1]
		CROSS JOIN [DetailClass] [d]

