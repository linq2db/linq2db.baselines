-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

