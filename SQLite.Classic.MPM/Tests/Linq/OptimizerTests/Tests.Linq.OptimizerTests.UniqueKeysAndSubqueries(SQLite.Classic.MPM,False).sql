-- SQLite.Classic.MPM SQLite.Classic SQLite

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
	[f2].[ValueStr]
FROM
	[SecondOptimizerData] [t1]
		LEFT JOIN [FirstOptimizerData] [f1] ON [f1].[DataKey11] = [t1].[DataKey11] AND [f1].[ValueStr] LIKE 'Str%' ESCAPE '~'
		LEFT JOIN [FirstOptimizerData] [f2] ON [f2].[ValueStr] LIKE 'Str%' ESCAPE '~' AND [f2].[DataKey11] = 10

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[q].[Key1],
	[q].[Key2],
	[q].[DataKey11],
	[q].[DataKey21],
	[q].[DataKey22],
	[q].[DataKey31],
	[q].[DataKey32],
	[q].[DataKey33],
	[q].[ValueStr]
FROM
	[SecondOptimizerData] [q]
		LEFT JOIN [FirstOptimizerData] [f1] ON [f1].[DataKey11] = [q].[DataKey11] AND [f1].[ValueStr] LIKE 'Str%' ESCAPE '~'
		LEFT JOIN [FirstOptimizerData] [f2] ON [f2].[ValueStr] LIKE 'Str%' ESCAPE '~' AND [f2].[DataKey11] = 10

