BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableToInsert]
(
	[Id]    INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_TableToInsert] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TableToInsert]
(
	[Id],
	[Value]
)
VALUES
(2,'Janet'),
(3,'Doe')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
		INNER JOIN [TableToInsert] [t] ON [t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value_1] AND [t].[Value] IS NOT NULL AND [r].[Value_1] IS NOT NULL OR [t].[Value] IS NULL AND [r].[Value_1] IS NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableToInsert]

