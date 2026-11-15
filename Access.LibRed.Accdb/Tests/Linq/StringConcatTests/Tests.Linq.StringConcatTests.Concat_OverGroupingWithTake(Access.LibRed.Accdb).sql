-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t3].[Key_1],
	CASE
		WHEN [t2].[Value_1] IS NULL THEN ''
		ELSE [t2].[Value_1]
	END
FROM
	(
		SELECT DISTINCT
			[g_1].[GrpId] as [Key_1]
		FROM
			[ConcatGroupedEntity] [g_1]
	) [t3]
		OUTER APPLY (
			SELECT
				STRING_AGG(CASE
					WHEN [t1].[Value_1] IS NULL THEN ''
					ELSE [t1].[Value_1]
				END, '') as [Value_1]
			FROM
				(
					SELECT TOP 2
						[x].[Value] as [Value_1]
					FROM
						[ConcatGroupedEntity] [x]
					WHERE
						[t3].[Key_1] = [x].[GrpId]
					ORDER BY
						[x].[PK]
				) [t1]
		) [t2]
ORDER BY
	[t3].[Key_1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[GrpId],
	[t1].[Value]
FROM
	[ConcatGroupedEntity] [t1]

