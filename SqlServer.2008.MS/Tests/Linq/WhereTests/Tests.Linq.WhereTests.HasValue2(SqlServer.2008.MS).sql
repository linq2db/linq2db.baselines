BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	NOT ([p].[Value1] IS NOT NULL)

