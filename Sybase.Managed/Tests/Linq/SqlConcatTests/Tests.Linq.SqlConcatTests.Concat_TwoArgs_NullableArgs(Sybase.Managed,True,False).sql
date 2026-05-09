-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN [t].[Value1] IS NULL THEN NULL
		ELSE [t].[Value1] + [t].[Value2]
	END
FROM
	[StringConcatNullEntity] [t]
ORDER BY
	[t].[ID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2]
FROM
	[StringConcatNullEntity] [t1]

