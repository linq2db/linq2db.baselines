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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ExpressionMethod NVarChar -- String
SET     @ExpressionMethod = NULL

INSERT INTO [Issue4723Table1]
(
	[Id],
	[ExpressionMethod]
)
VALUES
(
	@Id,
	@ExpressionMethod
)

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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 1'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'Value 2'

INSERT INTO [Issue4723Table2]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

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

