BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT([x_1].[Key2]),
	COUNT([x_1].[Key1])
FROM
	(
		SELECT
			[x].[Key2],
			[x].[Key1]
		FROM
			[FirstOptimizerData] [x]
		GROUP BY
			[x].[Key1],
			[x].[Key2]
	) [x_1]

