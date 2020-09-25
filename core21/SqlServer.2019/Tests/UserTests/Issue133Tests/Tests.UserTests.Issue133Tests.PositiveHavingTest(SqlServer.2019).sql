BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	Sum([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(Sum([_].[ParentID]) IS NULL OR Sum([_].[ParentID]) <> 36)

