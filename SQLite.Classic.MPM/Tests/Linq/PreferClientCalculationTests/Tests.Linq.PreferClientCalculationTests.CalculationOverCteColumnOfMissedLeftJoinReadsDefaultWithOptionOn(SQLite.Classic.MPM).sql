-- SQLite.Classic.MPM SQLite.Classic SQLite
WITH [CTE_1] ([Id], [V])
AS
(
	SELECT
		[e].[Id],
		[j].[Value1]
	FROM
		[MissedJoinEntity] [e]
			LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
)
SELECT
	[x].[Id],
	[x].[V]
FROM
	[CTE_1] [x]

