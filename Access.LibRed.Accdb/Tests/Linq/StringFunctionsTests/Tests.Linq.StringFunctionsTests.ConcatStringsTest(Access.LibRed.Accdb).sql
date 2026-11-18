-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t].[Value2] IS NULL THEN ''
		ELSE [t].[Value2]
	END
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t].[Value3] IS NULL THEN ''
		ELSE [t].[Value3]
	END
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CONCAT_WS(' -> ', [t].[Value3], [t].[Value1], [t].[Value2])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CONCAT_WS(' -> ', [t].[Value3], [t].[Value3])
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

