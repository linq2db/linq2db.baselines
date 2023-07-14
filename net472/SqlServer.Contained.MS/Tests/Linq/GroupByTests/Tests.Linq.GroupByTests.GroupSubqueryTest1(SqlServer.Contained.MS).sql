BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		GROUP BY
			[t1].[ParentID]
	) [pmp],
	[Child] [pmp1]

