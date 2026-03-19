-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[f1].[Key1],
	[f1].[Key2],
	[f1].[DataKey11],
	[f1].[DataKey21],
	[f1].[DataKey22],
	[f1].[DataKey31],
	[f1].[DataKey32],
	[f1].[DataKey33],
	[f1].[ValueStr],
	[f2].[Key1],
	[f2].[Key2],
	[f2].[DataKey11],
	[f2].[DataKey21],
	[f2].[DataKey22],
	[f2].[DataKey31],
	[f2].[DataKey32],
	[f2].[DataKey33],
	[f2].[ValueStr],
	[f3].[Key1],
	[f3].[Key2],
	[f3].[DataKey11],
	[f3].[DataKey21],
	[f3].[DataKey22],
	[f3].[DataKey31],
	[f3].[DataKey32],
	[f3].[DataKey33],
	[f3].[ValueStr],
	[f1].[Key1],
	[f1].[Key2],
	[f1].[DataKey11],
	[f1].[DataKey21],
	[f1].[DataKey22],
	[f1].[DataKey31],
	[f1].[DataKey32],
	[f1].[DataKey33],
	[f1].[ValueStr],
	[f2].[Key1],
	[f2].[Key2],
	[f2].[DataKey11],
	[f2].[DataKey21],
	[f2].[DataKey22],
	[f2].[DataKey31],
	[f2].[DataKey32],
	[f2].[DataKey33],
	[f2].[ValueStr],
	[f3].[Key1],
	[f3].[Key2],
	[f3].[DataKey11],
	[f3].[DataKey21],
	[f3].[DataKey22],
	[f3].[DataKey31],
	[f3].[DataKey32],
	[f3].[DataKey33],
	[f3].[ValueStr]
FROM
	[SecondOptimizerData] [t1]
		INNER JOIN [FirstOptimizerData] [p2] ON [p2].[Key1] = [t1].[Key1] AND [p2].[Key2] = [t1].[Key2]
		INNER JOIN [FirstOptimizerData] [f1] ON [f1].[DataKey11] = [t1].[DataKey11]
		INNER JOIN [FirstOptimizerData] [f2] ON [f2].[DataKey21] = [t1].[DataKey21] AND [f2].[DataKey22] = [t1].[DataKey22]
		INNER JOIN [FirstOptimizerData] [f3] ON [f3].[DataKey31] = [t1].[DataKey31] AND [f3].[DataKey32] = [t1].[DataKey32] AND [f3].[DataKey33] = [t1].[DataKey33]
WHERE
	[f1].[ValueStr] IS NOT NULL AND [f2].[DataKey22] > 0 AND
	[f3].[Key1] > 0

