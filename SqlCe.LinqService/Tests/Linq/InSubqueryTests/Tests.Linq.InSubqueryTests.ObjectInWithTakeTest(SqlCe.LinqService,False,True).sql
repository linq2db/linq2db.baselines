BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 100

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT TOP (@take)
					[p].[ParentID],
					[p].[Value1] as [Value_1]
				FROM
					[Parent] [p]
			) [t1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID] AND [t1].[Value_1] = [c_1].[ParentID]
	)

