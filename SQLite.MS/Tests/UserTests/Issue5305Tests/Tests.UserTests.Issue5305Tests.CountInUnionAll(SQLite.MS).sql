-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10
DECLARE @skip  -- Int32
SET     @skip = 0

SELECT
	[x_2].[Order_1],
	[x_2].[Amount],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT
					CAST([o].[Id] AS NVarChar(11)) as [Order_1],
					[o].[Amount]
				FROM
					[Lines] [o]
				UNION ALL
				SELECT
					[x_3].[Order] as [Order_1],
					[x_3].[Amount]
				FROM
					[InvoiceLines] [x_3]
			) [t1]
	)
FROM
	(
		SELECT
			CAST([x].[Id] AS NVarChar(11)) as [Order_1],
			[x].[Amount]
		FROM
			[Lines] [x]
		UNION ALL
		SELECT
			[x_1].[Order] as [Order_1],
			[x_1].[Amount]
		FROM
			[InvoiceLines] [x_1]
	) [x_2]
LIMIT @take OFFSET @skip

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Order],
	[t1].[Amount]
FROM
	[Lines] [t1]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Order],
	[t1].[Amount],
	[t1].[ExtraColumnSoTheyDontAlign]
FROM
	[InvoiceLines] [t1]

