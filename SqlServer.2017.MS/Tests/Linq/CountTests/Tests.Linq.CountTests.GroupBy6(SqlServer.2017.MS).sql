-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

