-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT DISTINCT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT
			[t].[ID],
			CASE
				WHEN [t].[ID] > 8 THEN NULL
				ELSE [t].[BoolValue]
			END as [Value_1]
		FROM
			[LinqDataTypes] [t]
	) [t1]
ORDER BY
	-[t1].[Value_1] DESC,
	[t1].[ID]

