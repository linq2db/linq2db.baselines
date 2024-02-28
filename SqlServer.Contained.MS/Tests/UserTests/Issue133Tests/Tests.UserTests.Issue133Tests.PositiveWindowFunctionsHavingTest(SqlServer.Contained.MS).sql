BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*),
	SUM(Count(*)) OVER(),
	Sum([_].[ParentID])
FROM
	[Child] [_]
GROUP BY
	[_].[ParentID]
HAVING
	(Sum([_].[ParentID]) <> 36 OR Sum([_].[ParentID]) IS NULL)

