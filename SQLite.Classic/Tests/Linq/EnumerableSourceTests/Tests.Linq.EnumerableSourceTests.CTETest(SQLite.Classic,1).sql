-- SQLite.Classic SQLite

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

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

