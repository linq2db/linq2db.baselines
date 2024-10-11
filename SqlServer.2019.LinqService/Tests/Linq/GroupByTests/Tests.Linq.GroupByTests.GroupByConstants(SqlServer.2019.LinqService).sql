BeforeExecute
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as [ChildId],
			2 as [ParentId]
		FROM
			[Child] [g_1]
	) [t1]
GROUP BY
	[t1].[ChildId],
	[t1].[ParentId]

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

