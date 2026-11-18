-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	STRING_AGG(CASE
		WHEN [t1].[Value] IS NULL THEN ''
		ELSE [t1].[Value]
	END, '') WITHIN GROUP (ORDER BY [t1].[PK])
FROM
	[ConcatGroupedEntity] [t1]

