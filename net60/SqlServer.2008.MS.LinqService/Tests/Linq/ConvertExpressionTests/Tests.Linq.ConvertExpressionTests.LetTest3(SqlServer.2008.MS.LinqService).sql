BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p_1]
		OUTER APPLY (
			SELECT TOP (1)
				[p].[ParentID]
			FROM
				[Child] [p]
		) [t1]

