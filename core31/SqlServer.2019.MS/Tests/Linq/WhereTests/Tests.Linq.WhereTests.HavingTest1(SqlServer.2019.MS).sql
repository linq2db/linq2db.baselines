BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	Count(*) > 1

