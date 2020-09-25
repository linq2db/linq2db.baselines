BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

