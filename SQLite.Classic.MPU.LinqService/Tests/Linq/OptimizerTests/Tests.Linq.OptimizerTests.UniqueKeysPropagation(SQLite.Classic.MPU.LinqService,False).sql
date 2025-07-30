BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
	[f].[Key1],
	[f].[Key2],
	[f].[DataKey11],
	[f].[DataKey21],
	[f].[DataKey22],
	[f].[DataKey31],
	[f].[DataKey32],
	[f].[DataKey33],
	[f].[ValueStr]
FROM
	[SecondOptimizerData] [s]
		INNER JOIN [FirstOptimizerData] [f] ON [f].[DataKey11] = [s].[DataKey11]
WHERE
	[f].[ValueStr] LIKE 'Str%' ESCAPE '~'

