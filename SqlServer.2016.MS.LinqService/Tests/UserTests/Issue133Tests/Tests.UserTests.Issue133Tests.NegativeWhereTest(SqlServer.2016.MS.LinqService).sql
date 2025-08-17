BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	SUM([t1].[ParentID])
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	SUM([t1].[ParentID]) <> 36

