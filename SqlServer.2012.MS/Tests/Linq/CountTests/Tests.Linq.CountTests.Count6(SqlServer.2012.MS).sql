-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] > 2
	) [t1]

