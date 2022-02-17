BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

