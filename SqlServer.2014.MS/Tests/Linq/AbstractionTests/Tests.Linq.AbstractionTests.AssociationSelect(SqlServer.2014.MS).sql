BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId],
	[d_1].[SubId],
	[d_1].[cond],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SampleClass1] [t1]
	) [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id_1] as [cond],
				[d].[Value_1],
				[d].[Id],
				[d].[ParentId],
				[d].[SubId]
			FROM
				(
					SELECT
						[a_SomeEntities].[ParentId],
						[a_SomeEntities].[Id],
						[a_SomeEntities].[SubId],
						[a_SubItem].[Id] as [Id_1],
						[a_SubItem].[Value] as [Value_1]
					FROM
						[ChildEntitity] [a_SomeEntities]
							LEFT JOIN [SubEntitity] [a_SubItem] ON [a_SomeEntities].[SubId] = [a_SubItem].[Id]
					WHERE
						[m_1].[Id] = [a_SomeEntities].[ParentId]
				) [d]
			WHERE
				[d].[ParentId] % 3 = 0
			ORDER BY
				[d].[Id]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass1] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[ParentId],
	[d_1].[SubId],
	[d_1].[cond],
	[d_1].[Value_1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[SampleClass2] [t1]
	) [m_1]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id_1] as [cond],
				[d].[Value_1],
				[d].[Id],
				[d].[ParentId],
				[d].[SubId]
			FROM
				(
					SELECT
						[a_SomeEntities].[ParentId],
						[a_SomeEntities].[Id],
						[a_SomeEntities].[SubId],
						[a_SubItem].[Id] as [Id_1],
						[a_SubItem].[Value] as [Value_1]
					FROM
						[ChildEntitity] [a_SomeEntities]
							LEFT JOIN [SubEntitity] [a_SubItem] ON [a_SomeEntities].[SubId] = [a_SubItem].[Id]
					WHERE
						[m_1].[Id] = [a_SomeEntities].[ParentId]
				) [d]
			WHERE
				[d].[ParentId] % 3 = 0
			ORDER BY
				[d].[Id]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[SampleClass2] [t1]

