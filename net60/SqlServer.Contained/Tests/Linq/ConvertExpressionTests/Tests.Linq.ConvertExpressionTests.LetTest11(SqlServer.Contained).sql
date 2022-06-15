BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] > 0
			ORDER BY
				[c_1].[ParentID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ChildID] > -100
		) [t2]

