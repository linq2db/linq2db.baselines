BeforeExecute
-- SqlCe

SELECT
	[key_data_result].[ParentID],
	[key_data_result].[Value1],
	[key_data_result].[ID_1],
	[key_data_result].[ID],
	[_c].[ParentID] + 1
FROM
	(
		SELECT DISTINCT
			[p1].[ParentID],
			[p1].[ID],
			[p1].[Value1],
			[p1].[ID_1]
		FROM
			(
				SELECT
					[p2].[ParentID] + 2 as [ID],
					[p2].[ParentID],
					[p2].[Value1],
					[p2].[ParentID] + 1 as [ID_1]
				FROM
					[Parent] [p2]
				WHERE
					[p2].[ParentID] > -1
			) [p1]
		WHERE
			[p1].[ID] > 0
	) [key_data_result]
		INNER JOIN [Child] [_c] ON [_c].[ParentID] + 1 < [key_data_result].[ID] AND [_c].[ParentID] + 1 < [key_data_result].[ID] AND [key_data_result].[ParentID] = [_c].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[p1].[p2],
	[p1].[p2_1],
	[p1].[p2_2],
	[p1].[ID]
FROM
	(
		SELECT
			[p2].[ParentID] + 2 as [ID],
			[p2].[ParentID] as [p2],
			[p2].[Value1] as [p2_1],
			[p2].[ParentID] + 1 as [p2_2]
		FROM
			[Parent] [p2]
		WHERE
			[p2].[ParentID] > -1
	) [p1]
WHERE
	[p1].[ID] > 0

