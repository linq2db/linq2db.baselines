BeforeExecute
-- SqlCe

SELECT 
	[key_data_result].[ParentID], 
	[key_data_result].[Value1], 
	[_gjd_ch].[ParentID], 
	[_gjd_ch].[ChildID]
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
		INNER JOIN [Child] [_gjd_ch] ON [_gjd_ch].[ParentID] = [key_data_result].[ParentID]

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[p].[ParentID], 
	[p].[Value1], 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT TOP (@take) 
				[ch].[ParentID], 
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID]
			ORDER BY
				[ch].[ChildID] DESC
		) [t1]
WHERE
	[p].[ParentID] = 1

