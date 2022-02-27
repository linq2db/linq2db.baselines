BeforeExecute
-- SqlServer.2005

SELECT
	Count(*),
	SUM(Count(*)) OVER(),
	Sum([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(Sum([_].[ParentID]) IS NULL OR Sum([_].[ParentID]) <> 36)

