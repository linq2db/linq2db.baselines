BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[x].[Key1]
		FROM
			[FirstOptimizerData] [x]
		GROUP BY
			[x].[Key1]
	) [x_1]

