BeforeExecute
-- SqlServer.2017

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	NOT ([p].[Value1] IS NOT NULL)

