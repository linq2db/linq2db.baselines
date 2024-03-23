BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id_1],
	[t1].[Id],
	[t1].[ParentId]
FROM
	[Parent] [sep]
		LEFT JOIN (
			SELECT TOP (1)
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] as [ParentId],
				[l].[ParentID] + 1 as [Id_1]
			FROM
				[Child] [l]
		) [t1] ON 1=1

