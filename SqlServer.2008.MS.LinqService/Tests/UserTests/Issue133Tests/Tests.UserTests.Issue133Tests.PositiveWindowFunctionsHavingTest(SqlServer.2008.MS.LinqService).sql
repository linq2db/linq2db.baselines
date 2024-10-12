BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	(CAST(COUNT(*) AS Float) * 100) / SUM(COUNT(*)) OVER(),
	SUM([x].[ParentID])
FROM
	[Child] [x]
GROUP BY
	[x].[ParentID]
HAVING
	SUM([x].[ParentID]) <> 36

