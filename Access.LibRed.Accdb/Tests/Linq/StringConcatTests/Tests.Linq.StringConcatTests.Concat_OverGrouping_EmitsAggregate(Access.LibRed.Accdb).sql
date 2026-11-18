-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_1].[GrpId],
	STRING_AGG(CASE
		WHEN [g_1].[Value] IS NULL THEN ''
		ELSE [g_1].[Value]
	END, '') WITHIN GROUP (ORDER BY [g_1].[PK])
FROM
	[ConcatGroupedEntity] [g_1]
GROUP BY
	[g_1].[GrpId]
ORDER BY
	[g_1].[GrpId]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

