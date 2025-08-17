BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT TOP 1
			[t1].[ParentID],
			[t1].[Value1]
		FROM
			[Parent] [t1]
	) [t2]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

