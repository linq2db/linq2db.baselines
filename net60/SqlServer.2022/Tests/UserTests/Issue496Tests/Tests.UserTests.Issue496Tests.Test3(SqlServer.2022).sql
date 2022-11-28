BeforeExecute
-- SqlServer.2022

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID]
FROM
	[Parent] [_]
		INNER JOIN [Child] [c_1] ON Convert(BigInt, [_].[ParentID]) = [c_1].[ParentID]
WHERE
	[_].[ParentID] = 1

