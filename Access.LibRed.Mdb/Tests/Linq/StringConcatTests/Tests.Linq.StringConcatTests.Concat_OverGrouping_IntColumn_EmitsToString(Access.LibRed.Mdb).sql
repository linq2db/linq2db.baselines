-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[g_1].[GrpId],
	STRING_AGG(CStr([g_1].[IntV]), '') WITHIN GROUP (ORDER BY [g_1].[PK])
FROM
	[ConcatGroupedTypedEntity] [g_1]
GROUP BY
	[g_1].[GrpId]
ORDER BY
	[g_1].[GrpId]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[GuidV],
	[t1].[IntV]
FROM
	[ConcatGroupedTypedEntity] [t1]

