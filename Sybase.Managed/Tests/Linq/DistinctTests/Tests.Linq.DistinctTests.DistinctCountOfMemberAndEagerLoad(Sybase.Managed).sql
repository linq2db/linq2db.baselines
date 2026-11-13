-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]

