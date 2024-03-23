BeforeExecute
-- SqlCe

SELECT
	[t1].[Id_1] as [Id],
	[t1].[Id] as [Id_1]
FROM
	[Parent] [sep]
		LEFT JOIN (
			SELECT TOP (1)
				[l].[ParentID] + 1 as [Id],
				[l].[ParentID] + 1 as [Id_1]
			FROM
				[Child] [l]
		) [t1] ON 1=1

