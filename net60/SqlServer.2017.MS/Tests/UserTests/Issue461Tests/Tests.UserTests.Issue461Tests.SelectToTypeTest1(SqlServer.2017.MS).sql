BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id_1],
	[t1].[Id]
FROM
	[Parent] [sep]
		OUTER APPLY (
			SELECT TOP (1)
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] as [Id_1]
			FROM
				[Child] [l]
		) [t1]

