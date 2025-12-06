-- SQLite.Classic SQLite

SELECT
	[s].[Key1],
	[s].[Key2],
	[s].[DataKey11],
	[s].[DataKey21],
	[s].[DataKey22],
	[s].[DataKey31],
	[s].[DataKey32],
	[s].[DataKey33],
	[s].[ValueStr],
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
	[SecondOptimizerData] [s]
		LEFT JOIN [FirstOptimizerData] [f1] ON [f1].[DataKey11] = [s].[DataKey11] AND [f1].[ValueStr] LIKE 'Str%' ESCAPE '~'
		LEFT JOIN [FirstOptimizerData] [f2] ON [f2].[ValueStr] LIKE 'Str%' ESCAPE '~' AND [f2].[DataKey11] = 10

-- SQLite.Classic SQLite

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

