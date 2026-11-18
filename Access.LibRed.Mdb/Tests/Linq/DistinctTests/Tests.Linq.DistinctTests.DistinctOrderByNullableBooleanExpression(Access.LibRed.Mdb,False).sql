-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value_1]
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [t].[ID] > 8 THEN NULL
				ELSE [t].[BoolValue]
			END as [Value_1],
			[t].[ID]
		FROM
			[LinqDataTypes] [t]
	) [t1]
ORDER BY
	-[t1].[Value_1],
	[t1].[ID]

