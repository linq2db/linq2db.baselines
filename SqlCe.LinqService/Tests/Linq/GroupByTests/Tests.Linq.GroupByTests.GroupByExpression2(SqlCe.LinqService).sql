BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ChildID] as [Key_1],
	AVG([t1].[ParentID]) as [Average]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ChildID]

