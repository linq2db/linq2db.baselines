-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			(
				SELECT DISTINCT
					[x].[Key1]
				FROM
					[FirstOptimizerData] [x]
			) [x_1]
	) [x_2]

