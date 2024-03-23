BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Count(*)
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [c_1] ON [t1].[ParentID] = [c_1].[ParentID]

