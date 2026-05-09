-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN [t].[Value3] IS NULL THEN NULL
		ELSE [t].[Value1] + [t].[Value2] + [t].[Value3]
	END
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

