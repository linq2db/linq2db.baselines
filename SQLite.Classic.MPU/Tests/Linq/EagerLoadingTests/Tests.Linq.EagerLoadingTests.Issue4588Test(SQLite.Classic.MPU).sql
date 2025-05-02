BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 10
DECLARE @p_1  -- Int32
SET     @p_1 = 100

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[SubOrderId],
	[d_1].[Code],
	[d_1].[Date],
	[d_1].[IsActive]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					(
						SELECT
							[x].[Id]
						FROM
							[Order] [x]
						WHERE
							[x].[Name] LIKE 'cat%' ESCAPE '~'
						ORDER BY
							[x].[Id]
						LIMIT @p OFFSET @p_1
					) [t1]
			) [t2]
				INNER JOIN [SubOrder] [d] ON [t2].[Id] = [d].[OrderId]
	) [m_1]
		INNER JOIN [SubOrderDetail] [d_1] ON [m_1].[Id] = [d_1].[SubOrderId]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 10
DECLARE @p_1  -- Int32
SET     @p_1 = 100

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[OrderId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[x].[Id]
				FROM
					[Order] [x]
				WHERE
					[x].[Name] LIKE 'cat%' ESCAPE '~'
				ORDER BY
					[x].[Id]
				LIMIT @p OFFSET @p_1
			) [t1]
	) [m_1]
		INNER JOIN [SubOrder] [d] ON [m_1].[Id] = [d].[OrderId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 10
DECLARE @p_1  -- Int32
SET     @p_1 = 100

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Order] [x]
WHERE
	[x].[Name] LIKE 'cat%' ESCAPE '~'
ORDER BY
	[x].[Id]
LIMIT @p OFFSET @p_1

