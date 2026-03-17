-- SqlServer.2016.MS SqlServer.2016

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

