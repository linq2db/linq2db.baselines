BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

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

