-- SqlServer.CS SqlServer.2025
SELECT
	[x].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[ParentID],
			[e].[Value1]
		FROM
			[Parent] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[ParentID] DESC

