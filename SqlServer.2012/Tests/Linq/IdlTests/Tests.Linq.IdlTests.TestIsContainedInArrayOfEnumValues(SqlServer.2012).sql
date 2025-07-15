BeforeExecute
-- SqlServer.2012

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[Value1] IN (2, 3, 4)

