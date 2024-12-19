BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table1]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4723Table1]
(
	[Id]               INTEGER       NOT NULL,
	[ExpressionMethod] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(1,NULL)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4723Table2]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	(
		SELECT
			[se].[Value]
		FROM
			[Issue4723Table2] [se]
		WHERE
			[se].[Id] = [t1].[Id]
		LIMIT 1
	)
FROM
	[Issue4723Table1] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4723Table1]

