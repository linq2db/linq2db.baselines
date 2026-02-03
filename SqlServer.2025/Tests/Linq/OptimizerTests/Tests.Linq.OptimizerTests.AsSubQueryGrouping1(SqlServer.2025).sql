-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[FirstOptimizerData] [x]
		GROUP BY
			[x].[Key1]
	) [x_1]

