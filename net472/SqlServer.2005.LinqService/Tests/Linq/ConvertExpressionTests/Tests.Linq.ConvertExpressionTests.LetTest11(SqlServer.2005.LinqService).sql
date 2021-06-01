BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (@take)
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
			SELECT TOP (@take_1)
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ChildID] > -100
		) [t2]

