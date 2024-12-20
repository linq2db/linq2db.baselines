BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table1]
(
	[Field1] INTEGER NOT NULL,
	[Field2] INTEGER NOT NULL,
	[Field3] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table2]
(
	[Field2] INTEGER       NOT NULL,
	[Field4] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table3]
(
	[Field5] INTEGER NOT NULL,
	[Field1] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table4]
(
	[Field5] INTEGER NOT NULL,
	[Field6] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table5]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table5]
(
	[Field3] INTEGER     NULL,
	[Field7] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table6]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Table6]
(
	[Field7] INTEGER       NOT NULL,
	[Field8] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT DISTINCT
	[a_Ref4].[Field6],
	[a_Ref3].[Field4],
	Coalesce([a_Ref5].[Field8], '')
FROM
	[Table1] [t1]
		INNER JOIN [Table3] [a_Ref1] ON [t1].[Field1] = [a_Ref1].[Field1]
		INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
		LEFT JOIN [Table2] [a_Ref3] ON [t1].[Field2] = [a_Ref3].[Field2]
		LEFT JOIN [Table5] [a_Ref2] ON [t1].[Field3] = [a_Ref2].[Field3] OR [t1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
		LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
WHERE
	[t1].[Field3] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_2].[Field6],
	[g_2].[Field4],
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[a_Ref4].[Field6],
			[a_Ref3].[Field4],
			Coalesce([a_Ref5].[Field8], '') as [Field1]
		FROM
			[Table1] [g_1]
				INNER JOIN [Table3] [a_Ref1] ON [g_1].[Field1] = [a_Ref1].[Field1]
				INNER JOIN [Table4] [a_Ref4] ON [a_Ref1].[Field5] = [a_Ref4].[Field5]
				LEFT JOIN [Table2] [a_Ref3] ON [g_1].[Field2] = [a_Ref3].[Field2]
				LEFT JOIN [Table5] [a_Ref2] ON [g_1].[Field3] = [a_Ref2].[Field3] OR [g_1].[Field3] IS NULL AND [a_Ref2].[Field3] IS NULL
				LEFT JOIN [Table6] [a_Ref5] ON [a_Ref2].[Field7] = [a_Ref5].[Field7]
		WHERE
			[g_1].[Field3] IS NOT NULL
	) [g_2]
GROUP BY
	[g_2].[Field6],
	[g_2].[Field4]
HAVING
	COUNT(*) > 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table6]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table5]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table4]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table3]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Table1]

