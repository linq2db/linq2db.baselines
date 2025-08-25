BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

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

