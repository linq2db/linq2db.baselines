BeforeExecute
-- SqlServer.2012

SELECT
	[cp].[ParentID],
	[cp].[Value1]
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [c_1]

