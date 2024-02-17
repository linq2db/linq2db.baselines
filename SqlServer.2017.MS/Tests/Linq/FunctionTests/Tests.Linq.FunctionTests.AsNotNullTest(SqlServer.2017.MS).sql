BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
		CROSS JOIN [Parent] [p2]
WHERE
	[p1].[Value1] = [p2].[Value1]

