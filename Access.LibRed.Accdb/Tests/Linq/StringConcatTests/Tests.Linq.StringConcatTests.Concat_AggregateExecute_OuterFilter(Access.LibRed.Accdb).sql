-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	STRING_AGG([t1].[Value], '') WITHIN GROUP (ORDER BY [t1].[PK])
FROM
	[ConcatGroupedEntity] [t1]

