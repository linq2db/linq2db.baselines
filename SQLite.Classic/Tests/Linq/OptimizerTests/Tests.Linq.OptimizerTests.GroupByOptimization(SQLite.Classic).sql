-- SQLite.Classic SQLite

SELECT
	[t1].[Key1],
	[t1].[Key2],
	[t1].[DataKey11],
	[t1].[DataKey21],
	[t1].[DataKey22],
	[t1].[DataKey31],
	[t1].[DataKey32],
	[t1].[DataKey33],
	[t1].[ValueStr],
	[u].[UCount],
	[nu].[Count_1]
FROM
	[SecondOptimizerData] [t1]
		LEFT JOIN (
			SELECT
				[g_1].[DataKey21],
				[g_1].[DataKey22],
				[g_1].[Key1],
				[g_1].[Key2],
				COUNT(*) as [UCount]
			FROM
				[FirstOptimizerData] [g_1]
			GROUP BY
				[g_1].[Key1],
				[g_1].[Key2],
				[g_1].[DataKey21],
				[g_1].[DataKey22]
		) [u] ON [u].[DataKey21] = [t1].[DataKey21] AND [u].[DataKey22] = [t1].[DataKey22] AND [u].[Key1] = [t1].[Key1] AND [u].[Key2] = [t1].[Key2]
		LEFT JOIN (
			SELECT
				[g_2].[DataKey21],
				COUNT(*) as [Count_1]
			FROM
				[FirstOptimizerData] [g_2]
			GROUP BY
				[g_2].[Key1],
				[g_2].[Key2],
				[g_2].[DataKey21],
				[g_2].[DataKey22]
		) [nu] ON [nu].[DataKey21] = [t1].[DataKey21] AND [nu].[DataKey21] = [t1].[DataKey22]

-- SQLite.Classic SQLite

SELECT
	[p].[Key1],
	[p].[Key2],
	[p].[DataKey11],
	[p].[DataKey21],
	[p].[DataKey22],
	[p].[DataKey31],
	[p].[DataKey32],
	[p].[DataKey33],
	[p].[ValueStr]
FROM
	[SecondOptimizerData] [p]
		LEFT JOIN [FirstOptimizerData] [nu] ON [nu].[DataKey21] = [p].[DataKey21] AND [nu].[DataKey21] = [p].[DataKey22]

