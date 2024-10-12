BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(CASE
		WHEN [p].[ParentID] < 2 THEN 1
		ELSE NULL
	END)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > -1
GROUP BY
	[p].[Value1]

