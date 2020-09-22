BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[Parent] [cp_1]
		INNER JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID],
				[c_1].[GrandChildID],
				[cp].[ParentID] as [ParentID_1]
			FROM
				[Child] [cp],
				[GrandChild] [c_1]
		) [t1] ON [cp_1].[ParentID] = [t1].[ParentID_1] AND [cp_1].[ParentID] = [t1].[ParentID]

