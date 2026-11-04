-- SqlServer.2017.MS SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 10

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
							[x].[Name] LIKE N'cat%' ESCAPE N'~'
						ORDER BY
							[x].[Id]
						OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
					) [t1]
			) [t2]
				INNER JOIN [SubOrder] [d] ON [t2].[Id] = [d].[OrderId]
	) [m_1]
		INNER JOIN [SubOrderDetail] [d_1] ON [m_1].[Id] = [d_1].[SubOrderId]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 10

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
					[x].[Name] LIKE N'cat%' ESCAPE N'~'
				ORDER BY
					[x].[Id]
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) [t1]
	) [m_1]
		INNER JOIN [SubOrder] [d] ON [m_1].[Id] = [d].[OrderId]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 100
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[x].[Id],
	[x].[Name]
FROM
	[Order] [x]
WHERE
	[x].[Name] LIKE N'cat%' ESCAPE N'~'
ORDER BY
	[x].[Id]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

