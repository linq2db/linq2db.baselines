-- SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 1

SELECT
	[m_2].[DetailId],
	[m_2].[Id1],
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
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				WHERE
					[m_1].[Id1] >= @intParam
			) [t1]
				INNER JOIN [DetailClass] [d] ON [t1].[Id1] = [d].[MasterId]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [m_2].[DetailId] = [d_1].[DetailId]

-- SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 1

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[DetailValue],
	[d].[MasterId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		WHERE
			[m_1].[Id1] >= @intParam
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

-- SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 1

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[m_1].[Value]
FROM
	[MasterClass] [m_1]
WHERE
	[m_1].[Id1] >= @intParam

