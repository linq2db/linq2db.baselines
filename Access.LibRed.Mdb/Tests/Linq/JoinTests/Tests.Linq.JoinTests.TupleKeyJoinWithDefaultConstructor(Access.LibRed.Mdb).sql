-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[k_1].[StatusBitmask] BAND 128,
	CASE
		WHEN [g_1].[StatusBitmask] IS NULL THEN 0
		ELSE [g_1].[StatusBitmask]
	END BAND 128
FROM
	[TupleJoinPerson] [k_1]
		LEFT JOIN [TupleJoinStudent] [g_1] ON ([k_1].[Id] = [g_1].[Id] AND CStr([k_1].[Number]) = [g_1].[Number])

