BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[cond],
	[t1].[Html],
	[t1].[Plain],
	[t2].[cond],
	[t2].[Html],
	[t2].[Plain]
FROM
	[Root] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_SomeDrafts].[Html],
				[a_SomeDrafts].[Plain],
				1 as [cond]
			FROM
				[Draft1] [a_SomeDrafts]
			WHERE
				[x].[Id] = [a_SomeDrafts].[RootId]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_OtherDrafts].[Html],
				[a_OtherDrafts].[Plain],
				1 as [cond]
			FROM
				[Draft2] [a_OtherDrafts]
			WHERE
				[x].[Id] = [a_OtherDrafts].[RootId]
		) [t2]

