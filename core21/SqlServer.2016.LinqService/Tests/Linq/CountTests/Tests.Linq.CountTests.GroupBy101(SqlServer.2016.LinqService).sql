BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

