BeforeExecute
-- SqlServer.2012

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

