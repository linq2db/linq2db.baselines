-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id1]
FROM
	[MasterClass] [x]
WHERE
	[x].[Id1] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id1]
FROM
	[MasterClass] [x]
WHERE
	[x].[Id1] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id1]
FROM
	[MasterClass] [x]
WHERE
	[x].[Id1] = 1
LIMIT 2

