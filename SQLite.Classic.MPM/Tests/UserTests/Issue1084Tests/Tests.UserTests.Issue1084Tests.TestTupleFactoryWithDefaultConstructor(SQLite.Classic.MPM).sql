-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[StatusBitmask] & 128,
	[g_1].[StatusBitmask] & 128
FROM
	[i1084_person] [t1]
		LEFT JOIN [i1084_student] [g_1] ON [t1].[Id] = [g_1].[Id] AND CAST([t1].[Number] AS NVarChar(11)) = [g_1].[Number]

