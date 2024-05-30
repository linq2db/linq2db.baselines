BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- SQLite.MS SQLite

WITH [CTE_1] ([Id], [Value_1])
AS
(
	SELECT
		[t1].[Id],
		[t1].[Value]
	FROM
		(
			SELECT NULL [Id], NULL [Value] WHERE 1 = 0
			UNION ALL
			VALUES
				(2,'Janet'), (3,'Doe')
			) [t1]
)
SELECT
	[t].[Id],
	[t].[Value]
FROM
	[CTE_1] [r]
		INNER JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value_1] OR [t].[Value] IS NULL AND [r].[Value_1] IS NULL)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TableToInsert]

