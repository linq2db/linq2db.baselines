-- SqlCe

SELECT
	[r].[Id],
	CASE
		WHEN [r].[Value1] = [r].[Value2] THEN 1
		ELSE 0
	END as [cond],
	CASE
		WHEN [r].[Value1] <> [r].[Value2] THEN 1
		ELSE 0
	END as [cond_1],
	CASE
		WHEN [r].[Value1] > [r].[Value2] THEN 1
		ELSE 0
	END as [cond_2],
	CASE
		WHEN [r].[Value1] < [r].[Value2] THEN 1
		ELSE 0
	END as [cond_3],
	CASE
		WHEN [r].[Value1] >= [r].[Value2] THEN 1
		ELSE 0
	END as [cond_4],
	CASE
		WHEN [r].[Value1] <= [r].[Value2] THEN 1
		ELSE 0
	END as [cond_5],
	CASE
		WHEN [r].[Value4] = [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END as [cond_6],
	CASE
		WHEN [r].[Value4] <> [r].[Value5] OR [r].[Value4] IS NULL AND [r].[Value5] IS NOT NULL OR [r].[Value4] IS NOT NULL AND [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END as [cond_7],
	CASE
		WHEN [r].[Value4] > [r].[Value5] THEN 1
		ELSE 0
	END as [cond_8],
	CASE
		WHEN [r].[Value4] < [r].[Value5] THEN 1
		ELSE 0
	END as [cond_9],
	CASE
		WHEN [r].[Value4] >= [r].[Value5] THEN 1
		ELSE 0
	END as [cond_10],
	CASE
		WHEN [r].[Value4] <= [r].[Value5] THEN 1
		ELSE 0
	END as [cond_11],
	CASE
		WHEN [r].[Value1] = [r].[Value4] THEN 1
		ELSE 0
	END as [cond_12],
	CASE
		WHEN [r].[Value1] <> [r].[Value4] OR [r].[Value4] IS NULL
			THEN 1
		ELSE 0
	END as [cond_13],
	CASE
		WHEN [r].[Value1] > [r].[Value4] THEN 1
		ELSE 0
	END as [cond_14],
	CASE
		WHEN [r].[Value1] < [r].[Value4] THEN 1
		ELSE 0
	END as [cond_15],
	CASE
		WHEN [r].[Value1] >= [r].[Value4] THEN 1
		ELSE 0
	END as [cond_16],
	CASE
		WHEN [r].[Value1] <= [r].[Value4] THEN 1
		ELSE 0
	END as [cond_17],
	CASE
		WHEN [r].[Value5] = [r].[Value2] THEN 1
		ELSE 0
	END as [cond_18],
	CASE
		WHEN [r].[Value5] <> [r].[Value2] OR [r].[Value5] IS NULL
			THEN 1
		ELSE 0
	END as [cond_19],
	CASE
		WHEN [r].[Value5] > [r].[Value2] THEN 1
		ELSE 0
	END as [cond_20],
	CASE
		WHEN [r].[Value5] < [r].[Value2] THEN 1
		ELSE 0
	END as [cond_21],
	CASE
		WHEN [r].[Value5] >= [r].[Value2] THEN 1
		ELSE 0
	END as [cond_22],
	CASE
		WHEN [r].[Value5] <= [r].[Value2] THEN 1
		ELSE 0
	END as [cond_23]
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

