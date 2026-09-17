-- Access.Ace.OleDb AccessOleDb
SELECT
	[k_1].[StatusBitmask] BAND 128,
	IIF([g_1].[StatusBitmask] IS NULL, 0, [g_1].[StatusBitmask]) BAND 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON ([k_1].[Id] = [g_1].[Id] AND CStr([k_1].[Number]) = [g_1].[Number])

