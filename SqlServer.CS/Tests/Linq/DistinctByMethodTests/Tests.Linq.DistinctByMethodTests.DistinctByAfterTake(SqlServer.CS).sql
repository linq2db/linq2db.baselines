-- SqlServer.CS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Value1] ORDER BY [e_1].[ParentID] DESC) as [RowNumber],
			[e_1].[ParentID],
			[e_1].[Value1]
		FROM
			(
				SELECT TOP (@take)
					[e].[Value1],
					[e].[ParentID]
				FROM
					[Parent] [e]
				ORDER BY
					[e].[ParentID] DESC
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

