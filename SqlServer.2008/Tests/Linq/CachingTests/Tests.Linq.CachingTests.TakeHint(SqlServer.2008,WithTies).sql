BeforeExecute
-- SqlServer.2008

SELECT
	[c1].[ParentID],
	[c1].[ChildID],
	[c2_1].[ParentID],
	[c2_1].[ChildID]
FROM
	[Child] [c1]
		CROSS JOIN (
			SELECT TOP (10) WITH TIES
				[c2].[ParentID],
				[c2].[ChildID]
			FROM
				[Child] [c2]
			ORDER BY
				[c2].[ParentID]
		) [c2_1]

