-- SqlServer.2016.MS SqlServer.2016

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

