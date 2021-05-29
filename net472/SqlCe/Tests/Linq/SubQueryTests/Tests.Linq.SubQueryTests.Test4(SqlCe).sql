BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[detail].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] <> 5
	) [key_data_result]
		INNER JOIN [Child] [detail] ON [detail].[ParentID] = [key_data_result].[ParentID] AND [detail].[ChildID] = [detail].[ParentID] * 10 + 1

BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

