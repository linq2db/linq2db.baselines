BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4723Table1]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4723Table1]
(
	[Id]               INTEGER       NOT NULL,
	[ExpressionMethod] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(1,NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4723Table2]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[t2].[Id],
	(
		SELECT
			[se].[Value]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t2].[Id]
		LIMIT 1
	),
	[t1].[Association]
FROM
	[Issue4723Table1] [t2]
		LEFT JOIN (
			SELECT
				[a_Association].[Value] as [Association],
				ROW_NUMBER() OVER (PARTITION BY [a_Association].[Id] ORDER BY [a_Association].[Id]) as [rn],
				[a_Association].[Id]
			FROM
				[Issue4723Table2] [a_Association]
		) [t1] ON [t1].[Id] = [t2].[Id] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4723Table1]

