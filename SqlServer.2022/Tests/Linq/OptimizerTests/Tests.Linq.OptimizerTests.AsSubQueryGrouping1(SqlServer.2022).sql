-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[x].[Key1]
		FROM
			[FirstOptimizerData] [x]
	) [x_1]

