-- SQLite.MS SQLite
WITH [CTE_1] ([Id], [Value1])
AS
(
	SELECT
		[t1].[Id],
		[t1].[Value1]
	FROM
		[ClientCalcEntity] [t1]
)
SELECT
	[e].[Id],
	Abs([c_1].[Value1])
FROM
	[ClientCalcEntity] [e]
		LEFT JOIN [CTE_1] [c_1] ON [c_1].[Id] = [e].[Id] + 1000

