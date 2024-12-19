BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] <> 1 OR [p].[Value1] IS NULL

