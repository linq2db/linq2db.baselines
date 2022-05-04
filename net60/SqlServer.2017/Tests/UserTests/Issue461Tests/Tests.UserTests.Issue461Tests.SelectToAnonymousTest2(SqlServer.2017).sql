BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ParentId],
	[t1].[Id]
FROM
	[Parent] [sep]
		OUTER APPLY (
			SELECT TOP (1)
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] as [ParentId]
			FROM
				[Child] [l]
		) [t1]

