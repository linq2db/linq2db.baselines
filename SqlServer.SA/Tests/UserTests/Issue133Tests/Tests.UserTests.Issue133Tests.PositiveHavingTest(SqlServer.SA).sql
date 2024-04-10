BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	SUM([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(SUM([_].[ParentID]) <> 36 OR SUM([_].[ParentID]) IS NULL)

