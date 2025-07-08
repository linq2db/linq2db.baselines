BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[o].[ParentID],
	[o].[Value1],
	[c_2].[ParentID],
	[c_2].[ChildID]
FROM
	[Parent] [o]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				(
					SELECT TOP (1)
						[x].[ParentID],
						[x].[ChildID]
					FROM
						[Child] [x]
					ORDER BY
						[x].[ChildID] DESC
				) [c_1]
		) [c_2] ON [c_2].[ParentID] = [o].[ParentID]

