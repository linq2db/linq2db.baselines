-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN [t].[Value1] IS NULL OR [t].[Value2] IS NULL OR [t].[Value3] IS NULL
			THEN NULL
		ELSE [t].[Value1] + CAST([t].[Value2] AS NVarChar(11)) + Lower(CAST([t].[Value3] AS NVarChar(36)))
	END
FROM
	StringConcatIntGuidNullEntity [t]
ORDER BY
	[t].[ID]

-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	StringConcatIntGuidNullEntity [t1]

