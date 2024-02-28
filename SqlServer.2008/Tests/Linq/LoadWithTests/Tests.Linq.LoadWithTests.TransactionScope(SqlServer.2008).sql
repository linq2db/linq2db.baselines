BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			(
				SELECT TOP (@take)
					[x].[ParentID],
					[x].[Value1]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] = 1
			) [t1]
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [key_data_result].[ParentID] = [detail].[ParentID]

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 1

