-- SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1] AND [d].[MasterId] = [m_1].[Id2]
WHERE
	[m_1].[Id1] >= @intParam

-- SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		WHERE
			[m_1].[Id1] >= @intParam
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_2].[Id1]
WHERE
	[d].[MasterId] % 2 = 0

-- SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_1].[Id1],
	[m_1].[Id2]
FROM
	[MasterClass] [m_1]
WHERE
	[m_1].[Id1] >= @intParam

