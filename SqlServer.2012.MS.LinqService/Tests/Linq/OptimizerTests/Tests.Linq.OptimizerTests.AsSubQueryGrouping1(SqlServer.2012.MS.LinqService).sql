BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

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

