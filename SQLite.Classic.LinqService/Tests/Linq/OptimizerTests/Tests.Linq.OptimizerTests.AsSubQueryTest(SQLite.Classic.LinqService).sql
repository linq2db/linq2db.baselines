BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[f].[Key1],
	[f].[Key2],
	[f].[DataKey11],
	[f].[DataKey21],
	[f].[DataKey22],
	[f].[DataKey31],
	[f].[DataKey32],
	[f].[DataKey33],
	[f].[ValueStr],
	[s].[Key1],
	[s].[Key2],
	[s].[DataKey11],
	[s].[DataKey21],
	[s].[DataKey22],
	[s].[DataKey31],
	[s].[DataKey32],
	[s].[DataKey33],
	[s].[ValueStr]
FROM
	(
		SELECT
			[v].[Key1],
			[v].[Key2],
			[v].[DataKey11],
			[v].[DataKey21],
			[v].[DataKey22],
			[v].[DataKey31],
			[v].[DataKey32],
			[v].[DataKey33],
			[v].[ValueStr]
		FROM
			[SecondOptimizerData] [v]
		WHERE
			[v].[Key1] <> 1
	) [s]
		LEFT JOIN [FirstOptimizerData] [f] ON [f].[Key1] = [s].[Key1] AND [f].[Key2] = [s].[Key2]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[f].[Key1],
	[f].[Key2],
	[f].[DataKey11],
	[f].[DataKey21],
	[f].[DataKey22],
	[f].[DataKey31],
	[f].[DataKey32],
	[f].[DataKey33],
	[f].[ValueStr],
	[s].[Key1],
	[s].[Key2],
	[s].[DataKey11],
	[s].[DataKey21],
	[s].[DataKey22],
	[s].[DataKey31],
	[s].[DataKey32],
	[s].[DataKey33],
	[s].[ValueStr]
FROM
	[SecondOptimizerData] [s]
		LEFT JOIN [FirstOptimizerData] [f] ON [f].[Key1] = [s].[Key1] AND [f].[Key2] = [s].[Key2]
WHERE
	[s].[Key1] <> 1

