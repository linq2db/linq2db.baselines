-- SQLite.Classic.MPU SQLite.Classic SQLite
WITH [CTE_1] ([Id], [Col])
AS
(
	SELECT
		[e].[Id],
		Abs([e].[Value1])
	FROM
		[ClientCalcEntity] [e]
)
SELECT
	[e_1].[Id],
	[c_1].[Col]
FROM
	[ClientCalcEntity] [e_1]
		LEFT JOIN [CTE_1] [c_1] ON [c_1].[Id] = [e_1].[Id] + 1000

