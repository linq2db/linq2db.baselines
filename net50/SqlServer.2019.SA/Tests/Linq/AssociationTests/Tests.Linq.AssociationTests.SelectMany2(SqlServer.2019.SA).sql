BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[cp].[ParentID],
	[cp].[Value1]
FROM
	[Parent] [cp]
		CROSS JOIN [Child] [c_1]

