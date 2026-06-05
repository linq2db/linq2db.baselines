-- Sybase.Managed Sybase

SELECT TOP 3
	[t1].[Value1]
FROM
	(
		SELECT DISTINCT
			[p].[Value1]
		FROM
			[Parent] [p]
	) [t1]
ORDER BY
	CASE
		WHEN [t1].[Value1] IS NULL THEN 0
		ELSE 1
	END,
	[t1].[Value1] DESC

-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

