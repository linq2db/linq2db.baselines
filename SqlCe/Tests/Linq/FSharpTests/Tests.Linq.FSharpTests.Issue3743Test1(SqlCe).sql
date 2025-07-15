BeforeExecute
-- SqlCe

SELECT
	[tupledArg].[ParentID],
	[tupledArg].[Value1],
	[c_1].[ParentID] as [ParentID_1],
	[c_1].[ChildID],
	[cInfo].[ParentID] as [ParentID_2],
	[cInfo].[Value1] as [Value1_1]
FROM
	[Parent] [tupledArg]
		INNER JOIN [Child] [c_1] ON [tupledArg].[ParentID] = [c_1].[ParentID]
		LEFT JOIN [Parent] [cInfo] ON [c_1].[ParentID] = [cInfo].[ParentID]
WHERE
	[tupledArg].[ParentID] = 1

