-- SqlCe

SELECT
	[t1].[ChildID] as [Key_1],
	AVG([t1].[ParentID]) as [y]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

