BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value_1],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		CROSS APPLY (
			SELECT TOP (2)
				[d].[Id],
				[d].[Value] as [Value_1],
				[d].[ParentId]
			FROM
				[SubItem1] [d]
			WHERE
				[m_2].[Id] = [d].[ParentId] AND [d].[ParentId] % 2 = 0
			ORDER BY
				[d].[Id]
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value_1],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		CROSS APPLY (
			SELECT TOP (2)
				[e].[Value] as [Value_1],
				[e].[Id],
				[e].[ParentId]
			FROM
				[SubItem1] [e]
			WHERE
				[m_2].[Id] = [e].[ParentId] AND [e].[ParentId] % 2 = 0
			ORDER BY
				[e].[Id]
		) [d]
WHERE
	[d].[Value_1] LIKE N'Sub1~_%' ESCAPE N'~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[cond],
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value_1],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [cond],
			[t1].[Id]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
				LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_2]
		CROSS APPLY (
			SELECT TOP (2)
				[e].[Value] as [Value_1],
				[e].[Id],
				[e].[ParentId]
			FROM
				[SubItem2] [e]
			WHERE
				([m_2].[cond] = [e].[ParentId] OR [m_2].[cond] IS NULL AND [e].[ParentId] IS NULL) AND
				[e].[ParentId] % 2 = 0
			ORDER BY
				[e].[Id]
		) [d_1]
WHERE
	[d_1].[Value_1] LIKE N'Sub2~_%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[cond],
	[m_2].[Id],
	[d_1].[Id],
	[d_1].[Value_1],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[Id] as [cond],
			[t1].[Id]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id]
				FROM
					[MainItem] [m_1]
				WHERE
					[m_1].[Id] > 1
			) [t1]
				INNER JOIN [SubItem1] [d] ON [t1].[Id] = [d].[ParentId]
				LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]
	) [m_2]
		CROSS APPLY (
			SELECT TOP (2)
				[e].[Value] as [Value_1],
				[e].[Id],
				[e].[ParentId]
			FROM
				[SubItem2] [e]
			WHERE
				([m_2].[cond] = [e].[ParentId] OR [m_2].[cond] IS NULL AND [e].[ParentId] IS NULL) AND
				[e].[ParentId] % 2 = 0
			ORDER BY
				[e].[Id]
		) [d_1]
WHERE
	[d_1].[Value_1] LIKE N'Sub2~_%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId],
	[a_Parent].[Id],
	[a_Parent].[Value]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
		LEFT JOIN [MainItem] [a_Parent] ON [d].[ParentId] = [a_Parent].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[Id],
	[d].[Id],
	[d].[Value],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id]
		FROM
			[MainItem] [m_1]
		WHERE
			[m_1].[Id] > 1
	) [m_2]
		INNER JOIN [SubItem1] [d] ON [m_2].[Id] = [d].[ParentId]
WHERE
	[d].[ParentId] % 2 = 0 AND [d].[Value] LIKE N'Sub1~_%' ESCAPE N'~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Id],
	[m_1].[Value]
FROM
	[MainItem] [m_1]
WHERE
	[m_1].[Id] > 1
ORDER BY
	[m_1].[Id]

