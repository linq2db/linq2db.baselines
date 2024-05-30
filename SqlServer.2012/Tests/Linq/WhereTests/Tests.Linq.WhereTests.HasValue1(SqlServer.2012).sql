BeforeExecute
-- SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NOT NULL

