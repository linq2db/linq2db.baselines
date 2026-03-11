-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[x_1].[Key_1],
	SUM([x_1].[c1])
FROM
	(
		SELECT DISTINCT
			[x].[Value1] as [Key_1],
			4 as [c1]
		FROM
			[Parent] [x]
	) [x_1]
GROUP BY
	[x_1].[Key_1]

