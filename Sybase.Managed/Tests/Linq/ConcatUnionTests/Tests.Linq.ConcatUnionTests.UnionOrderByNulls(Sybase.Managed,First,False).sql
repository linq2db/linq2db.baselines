-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[ParentID],
	[t1].[Value1]
FROM
	(
		SELECT
			[p].[Value1],
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] < 5
		UNION
		SELECT
			[p_1].[Value1],
			[p_1].[ParentID]
		FROM
			[Parent] [p_1]
		WHERE
			[p_1].[ParentID] >= 3
	) [t1]
ORDER BY
	CASE
		WHEN [t1].[Value1] IS NULL THEN 0
		ELSE 1
	END,
	[t1].[Value1],
	[t1].[ParentID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

