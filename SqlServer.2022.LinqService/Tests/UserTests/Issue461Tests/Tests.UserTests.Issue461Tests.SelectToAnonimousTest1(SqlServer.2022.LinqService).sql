BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id_1],
	[t1].[Id]
FROM
	[Parent] [sep]
		LEFT JOIN (
			SELECT TOP (1)
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] + 1 as [Id_1]
			FROM
				[Child] [l]
		) [t1] ON 1=1

