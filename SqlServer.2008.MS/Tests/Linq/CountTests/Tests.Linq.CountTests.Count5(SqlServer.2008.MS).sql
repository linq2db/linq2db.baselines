-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Child] [t1]
	) [t2]

