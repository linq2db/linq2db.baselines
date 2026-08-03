-- SqlServer.2012.MS SqlServer.2012
SELECT
	IIF([i].[item] = 0, NULL, [p].[ParentID]),
	[p].[Value1]
FROM
	[Parent] [p],
	(VALUES
		(0), (1)
	) [i]([item])
WHERE
	IIF([i].[item] = 0, NULL, [p].[ParentID]) = [p].[Value1] OR
	[i].[item] = 0 AND [p].[Value1] IS NULL

