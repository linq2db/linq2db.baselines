BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	Sum([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(Sum([_].[ParentID]) <> 36 OR Sum([_].[ParentID]) IS NULL)

