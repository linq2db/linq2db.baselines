BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	SUM([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	SUM([t1].[ParentID]) <> 36 OR SUM([t1].[ParentID]) IS NULL

