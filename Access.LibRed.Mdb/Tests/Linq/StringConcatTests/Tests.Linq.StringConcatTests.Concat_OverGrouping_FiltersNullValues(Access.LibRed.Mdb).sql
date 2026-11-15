-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[g_2].[Key_1],
	CASE
		WHEN [g_2].[Value_1] IS NULL THEN ''
		ELSE [g_2].[Value_1]
	END
FROM
	(
		SELECT
			[g_1].[GrpId] as [Key_1],
			STRING_AGG([g_1].[Value], '') WITHIN GROUP (ORDER BY [g_1].[PK]) as [Value_1]
		FROM
			[ConcatGroupedEntity] [g_1]
		GROUP BY
			[g_1].[GrpId]
	) [g_2]
ORDER BY
	[g_2].[Key_1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

