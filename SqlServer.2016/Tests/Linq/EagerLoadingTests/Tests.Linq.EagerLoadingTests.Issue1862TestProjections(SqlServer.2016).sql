BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2016
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[TagId],
	[a_Tag].[Name]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[b].[Id]
				FROM
					[Blog] [b]
				WHERE
					[b].[Id] = @blogId
			) [t1]
				INNER JOIN [Post] [d] ON [t1].[Id] = [d].[BlogId]
	) [m_1]
		INNER JOIN [PostTag] [d_1] ON [m_1].[Id] = [d_1].[PostId]
		INNER JOIN [Tag] [a_Tag] ON [d_1].[TagId] = [a_Tag].[Id]
WHERE
	[d_1].[IsDeleted] = 0
ORDER BY
	[d_1].[TagId]

BeforeExecute
-- SqlServer.2016
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Title],
	[d].[PostContent]
FROM
	(
		SELECT DISTINCT
			[b].[Id]
		FROM
			[Blog] [b]
		WHERE
			[b].[Id] = @blogId
	) [m_1]
		INNER JOIN [Post] [d] ON [m_1].[Id] = [d].[BlogId]
ORDER BY
	[d].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2016
DECLARE @blogId Int -- Int32
SET     @blogId = 1

SELECT
	[b].[Id],
	[b].[Title]
FROM
	[Blog] [b]
WHERE
	[b].[Id] = @blogId

