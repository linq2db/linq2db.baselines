BeforeExecute
-- SqlServer.2005

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	[Parent] [t2]
		LEFT JOIN (
			SELECT TOP (1)
				[r].[Value1]
			FROM
				[Parent] [r]
		) [t1] ON 1=1
WHERE
	[t1].[Value1] IS NOT NULL

