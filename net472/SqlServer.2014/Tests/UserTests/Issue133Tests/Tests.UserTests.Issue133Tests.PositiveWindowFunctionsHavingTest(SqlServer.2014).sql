BeforeExecute
-- SqlServer.2014 SqlServer.2012

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

