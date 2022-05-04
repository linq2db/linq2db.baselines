BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ChildID]
FROM
	[Parent] [p_1]
		OUTER APPLY (
			SELECT TOP (1)
				[p].[ChildID]
			FROM
				[Child] [p]
		) [t1]

