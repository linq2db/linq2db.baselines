-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @cond

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @cond

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @cond

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @cond  -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @cond

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

