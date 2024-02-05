BeforeExecute
-- SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] BETWEEN 1 AND 10

