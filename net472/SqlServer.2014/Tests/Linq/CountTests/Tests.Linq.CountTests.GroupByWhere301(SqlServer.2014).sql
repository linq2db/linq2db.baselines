BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[ParentID]
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	(Count(*) > 3 OR [t1].[ParentID] = 1)

