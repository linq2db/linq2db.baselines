BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4723Table1]
(
	[Id]               INTEGER       NOT NULL,
	[ExpressionMethod] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(1,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4723Table2]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(1,'Value 1'),
(1,'Value 1'),
(2,'Value 2')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id],
	[t1].[Association]
FROM
	[Issue4723Table1] [x]
		LEFT JOIN (
			SELECT
				[a_Association].[Value] as [Association],
				ROW_NUMBER() OVER (PARTITION BY [a_Association].[Id] ORDER BY [a_Association].[Id]) as [rn],
				[a_Association].[Id]
			FROM
				[Issue4723Table2] [a_Association]
		) [t1] ON [t1].[Id] = [x].[Id] AND [t1].[rn] <= 1
WHERE
	[t1].[Association] IS NOT NULL AND ([t1].[Association] <> 'unknown' OR [t1].[Association] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table1]

