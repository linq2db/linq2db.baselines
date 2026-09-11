-- SQLite.Classic.MPM SQLite.Classic SQLite
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
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

-- SQLite.Classic.MPM SQLite.Classic SQLite
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
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]
WHERE
	[d].[DetailId] % 2 = 0

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_2].[Id1],
	[d].[DetailId]
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
WHERE
	[d].[DetailId] % 2 = 0

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @intParam  -- Int32
SET     @intParam = 0

SELECT
	[m_1].[Id1] + 100,
	[m_1].[Id1]
FROM
	[MasterClass] [m_1]
WHERE
	[m_1].[Id1] >= @intParam
ORDER BY
	[m_1].[Id2] DESC

