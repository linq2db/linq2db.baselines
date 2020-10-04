BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	([p].[Value1] IS NULL OR 1 <> [p].[Value1])

