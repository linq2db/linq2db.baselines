BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	IIF((
		SELECT TOP (@take)
			[a_Parent].[Value1]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[ch].[ChildID] = [c_1].[ChildID]
	) IS NULL, [c_1].[ChildID], (
		SELECT TOP (@take)
			[a_Parent].[Value1]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[ch].[ChildID] = [c_1].[ChildID]
	))
FROM
	[Child] [c_1]

