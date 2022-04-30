BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 3
DECLARE @Value_1 Int -- Int32
SET     @Value_1 = 3

SELECT TOP (@take)
	[с].[ChildID]
FROM
	[GrandChild] [с]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [_]
				INNER JOIN [Child] [c_1]
					INNER JOIN [GrandChild] [a_Child] ON [c_1].[ChildID] = [a_Child].[ChildID]
				ON [_].[ParentID] = [c_1].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] IS NOT NULL AND [a_Parent].[ParentID] = @id2 AND
			[_].[ParentID] = @Value_1
	)
ORDER BY
	[с].[ChildID]

