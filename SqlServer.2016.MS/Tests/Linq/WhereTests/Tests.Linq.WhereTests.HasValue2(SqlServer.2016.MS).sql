BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	NOT ([p].[Value1] IS NOT NULL)

