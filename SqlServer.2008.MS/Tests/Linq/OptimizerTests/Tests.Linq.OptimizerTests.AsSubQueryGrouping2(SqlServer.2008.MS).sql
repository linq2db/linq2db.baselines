-- SqlServer.2008.MS SqlServer.2008

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
	) [x_1]

