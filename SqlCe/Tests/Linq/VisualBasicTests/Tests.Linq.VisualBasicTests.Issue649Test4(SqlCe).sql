BeforeExecute
-- SqlCe

SELECT
	[data_1].[ParentID],
	[data_1].[ChildID],
	MAX([data_1].[ChildID]) as [Max_1]
FROM
	[Child] [data_1]
GROUP BY
	[data_1].[ParentID],
	[data_1].[ChildID]

