BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Key_1],
	SUM([t1].[MatchScore])
FROM
	(
		SELECT DISTINCT
			[x].[Value1] as [Key_1],
			4 as [MatchScore]
		FROM
			[Parent] [x]
	) [t1]
GROUP BY
	[t1].[Key_1]

