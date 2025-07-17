BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		CROSS JOIN [GetParentByID](2) [p]

