BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 20

SELECT
	[q].[Id],
	[q].[Value]
FROM
	[PaginationData] [q]
WHERE
	[q].[Id] % 2 = 0
ORDER BY
	[q].[Id],
	[q].[Value] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 20
DECLARE @take Int -- Int32
SET     @take = 20

SELECT
	COUNT(*) OVER(),
	[q].[Id],
	[q].[Value]
FROM
	[PaginationData] [q]
WHERE
	[q].[Id] % 2 = 0
ORDER BY
	[q].[Id],
	[q].[Value] DESC
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Id Int -- Int32
SET     @Id = 2

WITH [pagination_cte] ([Data_Id], [RowNumber], [Data_Value])
AS
(
	SELECT
		[x].[Id],
		ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC),
		[x].[Value]
	FROM
		[PaginationData] [x]
	WHERE
		[x].[Id] % 2 = 0
)
SELECT
	[t1].[Data_Id],
	[t1].[Data_Value],
	CAST([page].[RowNumber] - 1 AS Int) / 20 + 1
FROM
	(
		SELECT TOP (@take)
			CAST([x_1].[RowNumber] - 1 AS Int) / 20 + 1 as [c1],
			[x_1].[RowNumber]
		FROM
			[pagination_cte] [x_1]
		WHERE
			[x_1].[Data_Id] = @Id
	) [page]
		INNER JOIN [pagination_cte] [t1] ON [t1].[RowNumber] BETWEEN CAST(([page].[c1] - 1) * 20 + 1 AS BigInt) AND CAST([page].[c1] * 20 AS BigInt)
ORDER BY
	[t1].[RowNumber]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Id Int -- Int32
SET     @Id = 78

WITH [pagination_cte]
(
	[Data_Id],
	[RowNumber],
	[Data_Value],
	[TotalCount]
)
AS
(
	SELECT
		[x].[Id],
		ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC),
		[x].[Value],
		COUNT(*) OVER()
	FROM
		[PaginationData] [x]
	WHERE
		[x].[Id] % 2 = 0
)
SELECT
	[t1].[Data_Id],
	[t1].[Data_Value],
	CAST([page].[RowNumber] - 1 AS Int) / 20 + 1,
	[t1].[TotalCount]
FROM
	(
		SELECT TOP (@take)
			CAST([x_1].[RowNumber] - 1 AS Int) / 20 + 1 as [c1],
			[x_1].[RowNumber]
		FROM
			[pagination_cte] [x_1]
		WHERE
			[x_1].[Data_Id] = @Id
	) [page]
		INNER JOIN [pagination_cte] [t1] ON [t1].[RowNumber] BETWEEN CAST(([page].[c1] - 1) * 20 + 1 AS BigInt) AND CAST([page].[c1] * 20 AS BigInt)
ORDER BY
	[t1].[RowNumber]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2

SELECT TOP (1)
	([t1].[RowNumber] - 1) / 20 + 1
FROM
	(
		SELECT
			[x].[Id],
			ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC) as [RowNumber]
		FROM
			[PaginationData] [x]
		WHERE
			[x].[Id] % 2 = 0
	) [t1]
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 78

SELECT TOP (1)
	([t1].[RowNumber] - 1) / 20 + 1
FROM
	(
		SELECT
			[x].[Id],
			ROW_NUMBER() OVER(ORDER BY [x].[Id], [x].[Value] DESC) as [RowNumber]
		FROM
			[PaginationData] [x]
		WHERE
			[x].[Id] % 2 = 0
	) [t1]
WHERE
	[t1].[Id] = @Id

