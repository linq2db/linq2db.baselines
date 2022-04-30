BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	Coalesce((
		SELECT TOP (@take)
			[a_Parent].[Value1]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[ch].[ChildID] = [c_1].[ChildID]
	), [c_1].[ChildID])
FROM
	[Child] [c_1]

