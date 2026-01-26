-- SQLite.Classic SQLite

SELECT
	COUNT([x_1].[Key2]),
	COUNT([x_1].[Key1])
FROM
	(
		SELECT DISTINCT
			[x].[Key2],
			[x].[Key1]
		FROM
			[FirstOptimizerData] [x]
	) [x_1]

