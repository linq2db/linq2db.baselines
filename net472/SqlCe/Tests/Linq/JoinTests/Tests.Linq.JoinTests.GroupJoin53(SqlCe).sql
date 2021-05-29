BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[detail].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID],
			[p].[Value1]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] = 1
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [detail].[ParentID] = [key_data_result].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

