-- SqlCe

SELECT
	[r].[Id],
	CASE
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END as [Value11],
	CASE
		WHEN [r].[Value1] <> [r].[Value2] THEN 1
		ELSE 0
	END as [Value12],
	CASE
		WHEN [r].[Value1] > [r].[Value2] THEN 1
		ELSE 0
	END as [Value13],
	CASE
		WHEN [r].[Value1] < [r].[Value2] THEN 1
		ELSE 0
	END as [Value14],
	CASE
		WHEN [r].[Value1] >= [r].[Value2] THEN 1
		ELSE 0
	END as [Value15],
	CASE
		WHEN [r].[Value1] <= [r].[Value2] THEN 1
		ELSE 0
	END as [Value16],
	CASE
		WHEN [r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END as [Value21],
	CASE
		WHEN [r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END as [Value22],
	CASE
		WHEN [r].[Value4] > [r].[Value5] THEN 1
		ELSE 0
	END as [Value23],
	CASE
		WHEN [r].[Value4] < [r].[Value5] THEN 1
		ELSE 0
	END as [Value24],
	CASE
		WHEN [r].[Value4] >= [r].[Value5] THEN 1
		ELSE 0
	END as [Value25],
	CASE
		WHEN [r].[Value4] <= [r].[Value5] THEN 1
		ELSE 0
	END as [Value26],
	CASE
		WHEN [r].[Value1] = [r].[Value4] THEN 1
		ELSE 0
	END as [Value31],
	CASE
		WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END as [Value32],
	CASE
		WHEN [r].[Value1] > [r].[Value4] THEN 1
		ELSE 0
	END as [Value33],
	CASE
		WHEN [r].[Value1] < [r].[Value4] THEN 1
		ELSE 0
	END as [Value34],
	CASE
		WHEN [r].[Value1] >= [r].[Value4] THEN 1
		ELSE 0
	END as [Value35],
	CASE
		WHEN [r].[Value1] <= [r].[Value4] THEN 1
		ELSE 0
	END as [Value36],
	CASE
		WHEN [r].[Value5] = [r].[Value2] THEN 1
		ELSE 0
	END as [Value41],
	CASE
		WHEN [r].[Value5] <> [r].[Value2] OR [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END as [Value42],
	CASE
		WHEN [r].[Value5] > [r].[Value2] THEN 1
		ELSE 0
	END as [Value43],
	CASE
		WHEN [r].[Value5] < [r].[Value2] THEN 1
		ELSE 0
	END as [Value44],
	CASE
		WHEN [r].[Value5] >= [r].[Value2] THEN 1
		ELSE 0
	END as [Value45],
	CASE
		WHEN [r].[Value5] <= [r].[Value2] THEN 1
		ELSE 0
	END as [Value46]
FROM
	[BooleanTable] [r]
WHERE
	[r].[Id] <> -1

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value4],
	[t1].[Value5]
FROM
	[BooleanTable] [t1]

