BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	(CAST(COUNT(*) AS Float) * 100) / SUM(COUNT(*)) OVER(),
	SUM([x].[ParentID])
FROM
	[Child] [x]
GROUP BY
	[x].[ParentID]
HAVING
	SUM([x].[ParentID]) <> 36

