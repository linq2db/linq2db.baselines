-- Access.Jet.Odbc AccessODBC
SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[k_1].[StatusBitmask] BAND 128,
	IIF([g_1].[StatusBitmask] IS NULL, 0, [g_1].[StatusBitmask]) BAND 128
FROM
	[TupleJoinPerson] [k_1]
		LEFT JOIN [TupleJoinStudent] [g_1] ON ([k_1].[Id] = [g_1].[Id] AND CStr([k_1].[Number]) = [g_1].[Number])

