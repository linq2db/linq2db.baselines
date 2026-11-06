-- SqlServer.2025.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]

