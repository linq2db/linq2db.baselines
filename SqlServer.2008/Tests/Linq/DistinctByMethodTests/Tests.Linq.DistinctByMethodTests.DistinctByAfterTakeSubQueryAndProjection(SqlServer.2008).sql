-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 7

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Value1] ORDER BY [e].[ParentID] DESC) as [RowNumber],
			[e].[ParentID],
			[e].[Value1]
		FROM
			(
				SELECT TOP (@take)
					[p].[ParentID],
					[p].[Value1]
				FROM
					[Parent] [p]
				ORDER BY
					[p].[ParentID] DESC
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[ParentID] DESC

-- SqlServer.2008
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

