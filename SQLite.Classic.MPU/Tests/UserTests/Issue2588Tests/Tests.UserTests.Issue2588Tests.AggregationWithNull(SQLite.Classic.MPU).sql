-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	MAX([x].[Value])
FROM
	[TestClass] [x]
WHERE
	[x].[Id] = 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	MAX([x].[Value])
FROM
	[TestClass] [x]
WHERE
	[x].[Id] = 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	MAX(CASE
		WHEN [d].[Value] IS NOT NULL THEN [d].[Value]
		ELSE 0
	END)
FROM
	(
		SELECT
			0 as [c1]
	) [t1]
		LEFT JOIN [TestClass] [d] ON [d].[Id] = 0

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	MAX(CASE
		WHEN [d].[Value] IS NOT NULL THEN [d].[Value]
		ELSE 5
	END)
FROM
	(
		SELECT
			5 as [c1]
	) [t1]
		LEFT JOIN [TestClass] [d] ON [d].[Id] = 0

