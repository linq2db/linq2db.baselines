BeforeExecute
-- SqlServer.2019

SELECT
	Count(*)
FROM
	[Parent] [gr]
GROUP BY
	[gr].[ParentID]

