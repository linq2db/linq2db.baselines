BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [ch]

