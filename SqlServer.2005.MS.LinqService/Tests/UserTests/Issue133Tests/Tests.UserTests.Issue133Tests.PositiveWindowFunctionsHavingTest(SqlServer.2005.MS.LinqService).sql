BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(CAST(COUNT(*) AS Float) * 100) / SUM(COUNT(*)) OVER(),
	SUM([x].[ParentID])
FROM
	[Child] [x]
GROUP BY
	[x].[ParentID]
HAVING
	SUM([x].[ParentID]) <> 36

