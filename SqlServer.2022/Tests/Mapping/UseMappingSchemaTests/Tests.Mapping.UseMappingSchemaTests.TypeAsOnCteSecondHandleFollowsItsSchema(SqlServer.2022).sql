-- SqlServer.2022
WITH [CTE_1] ([Id], [Kind])
AS
(
	SELECT
		[t1].[Id],
		[t1].[Kind]
	FROM
		[SourceSchemaShape] [t1]
)
SELECT
	IIF([s].[Kind] = N'C1', [s].[Kind], NULL)
FROM
	[Parent] [x]
		INNER JOIN [CTE_1] [s] ON [x].[ParentID] = [s].[Id]
ORDER BY
	[s].[Id]

