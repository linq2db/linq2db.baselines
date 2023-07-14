BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1],
	(
		SELECT
			[pmp].[ParentID]
		FROM
			[Child] [pmp]
		GROUP BY
			[pmp].[ParentID]
	) [t1]

