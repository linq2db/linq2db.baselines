-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [t].[Value1] IS NULL THEN ''
		ELSE [t].[Value1]
	END + CASE
		WHEN [t].[Value2] IS NULL THEN ''
		WHEN [t].[Value2] IS NOT NULL THEN CStr([t].[Value2])
		ELSE NULL
	END + CASE
		WHEN [t].[Value3] IS NULL THEN ''
		ELSE LCase(Mid(CStr([t].[Value3]), 2, 36))
	END
FROM
	[StringConcatIntGuidNullEntity] [t]
ORDER BY
	[t].[ID]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatIntGuidNullEntity] [t1]

