-- SqlCe

SELECT
	[e].[Id],
	[e].[Value1] + 12345 as [Calc]
FROM
	[ClientCalcEntity] [e]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SqlCe

SELECT
	CASE
		WHEN [e].[Id] > 1 THEN [e].[Value1]
		ELSE [e].[Value2]
	END as [c1]
FROM
	[ClientCalcEntity] [e]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SqlCe

SELECT
	-[e].[Value1] as [c1]
FROM
	[ClientCalcEntity] [e]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

-- SqlCe

SELECT
	[e].[Value1] + ABS([e].[Value2]) as [c1]
FROM
	[ClientCalcEntity] [e]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

