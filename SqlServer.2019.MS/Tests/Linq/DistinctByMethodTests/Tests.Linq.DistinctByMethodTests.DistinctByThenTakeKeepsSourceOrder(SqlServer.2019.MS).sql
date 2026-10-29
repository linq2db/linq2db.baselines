-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[ParentID],
			[e].[Value1]
		FROM
			[Parent] [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

