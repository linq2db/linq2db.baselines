-- SqlServer.2012
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]

