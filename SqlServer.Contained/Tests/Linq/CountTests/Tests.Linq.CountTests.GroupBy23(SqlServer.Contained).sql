BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(IIF([p].[ParentID] < 2, 1, NULL))
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > -1
GROUP BY
	[p].[Value1]

