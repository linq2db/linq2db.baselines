BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
		LEFT JOIN (
			SELECT TOP (1)
				[r].[Value1]
			FROM
				[Parent] [r]
		) [t1] ON 1=1
WHERE
	[t1].[Value1] IS NOT NULL

