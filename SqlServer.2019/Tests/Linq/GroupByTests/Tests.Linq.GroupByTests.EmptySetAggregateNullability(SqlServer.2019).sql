BeforeExecute
-- SqlServer.2019

SELECT
	[r].[Min_1],
	[r].[MAX_1],
	[r].[AVG_1],
	[r].[SUM_1],
	[r].[COUNT_1]
FROM
	(
		SELECT
			MIN([gr].[ParentID]) as [Min_1],
			MAX([gr].[ParentID]) as [MAX_1],
			AVG([gr].[ParentID]) as [AVG_1],
			SUM([gr].[ParentID]) as [SUM_1],
			COUNT(*) as [COUNT_1]
		FROM
			[Parent] [gr]
		WHERE
			[gr].[ParentID] = -1
	) [r]
WHERE
	[r].[Min_1] <> 0 OR [r].[Min_1] IS NULL

BeforeExecute
-- SqlServer.2019

SELECT
	[r].[MIN_1],
	[r].[Max_1],
	[r].[AVG_1],
	[r].[SUM_1],
	[r].[COUNT_1]
FROM
	(
		SELECT
			MAX([gr].[ParentID]) as [Max_1],
			MIN([gr].[ParentID]) as [MIN_1],
			AVG([gr].[ParentID]) as [AVG_1],
			SUM([gr].[ParentID]) as [SUM_1],
			COUNT(*) as [COUNT_1]
		FROM
			[Parent] [gr]
		WHERE
			[gr].[ParentID] = -1
	) [r]
WHERE
	[r].[Max_1] <> 0 OR [r].[Max_1] IS NULL

BeforeExecute
-- SqlServer.2019

SELECT
	[r].[MIN_1],
	[r].[MAX_1],
	[r].[Avg_1],
	[r].[SUM_1],
	[r].[COUNT_1]
FROM
	(
		SELECT
			AVG([gr].[ParentID]) as [Avg_1],
			MIN([gr].[ParentID]) as [MIN_1],
			MAX([gr].[ParentID]) as [MAX_1],
			SUM([gr].[ParentID]) as [SUM_1],
			COUNT(*) as [COUNT_1]
		FROM
			[Parent] [gr]
		WHERE
			[gr].[ParentID] = -1
	) [r]
WHERE
	[r].[Avg_1] <> 0 OR [r].[Avg_1] IS NULL

BeforeExecute
-- SqlServer.2019

SELECT
	[r].[MIN_1],
	[r].[MAX_1],
	[r].[AVG_1],
	[r].[Sum_1],
	[r].[COUNT_1]
FROM
	(
		SELECT
			SUM([gr].[ParentID]) as [Sum_1],
			MIN([gr].[ParentID]) as [MIN_1],
			MAX([gr].[ParentID]) as [MAX_1],
			AVG([gr].[ParentID]) as [AVG_1],
			COUNT(*) as [COUNT_1]
		FROM
			[Parent] [gr]
		WHERE
			[gr].[ParentID] = -1
	) [r]
WHERE
	[r].[Sum_1] <> 0 OR [r].[Sum_1] IS NULL

BeforeExecute
-- SqlServer.2019

SELECT
	[r].[MIN_1],
	[r].[MAX_1],
	[r].[AVG_1],
	[r].[SUM_1],
	[r].[Count_1]
FROM
	(
		SELECT
			COUNT(*) as [Count_1],
			MIN([gr].[ParentID]) as [MIN_1],
			MAX([gr].[ParentID]) as [MAX_1],
			AVG([gr].[ParentID]) as [AVG_1],
			SUM([gr].[ParentID]) as [SUM_1]
		FROM
			[Parent] [gr]
		WHERE
			[gr].[ParentID] = -1
	) [r]
WHERE
	[r].[Count_1] <> 0

