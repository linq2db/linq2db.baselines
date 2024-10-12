BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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

