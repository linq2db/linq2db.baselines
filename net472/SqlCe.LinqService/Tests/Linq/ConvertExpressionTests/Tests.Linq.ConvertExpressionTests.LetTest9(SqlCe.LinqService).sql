BeforeExecute
-- SqlCe
DECLARE @p_1 Int -- Int32
SET     @p_1 = 10

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[_c].[ParentID],
	[_c].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			(
				SELECT TOP (@p_1)
					[p].[ParentID],
					[p].[Value1]
				FROM
					[Parent] [p]
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] = [key_data_result].[ParentID]
ORDER BY
	[_c].[ChildID]

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]

