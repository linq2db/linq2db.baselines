-- SqlServer.2005.MS SqlServer.2005
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]

