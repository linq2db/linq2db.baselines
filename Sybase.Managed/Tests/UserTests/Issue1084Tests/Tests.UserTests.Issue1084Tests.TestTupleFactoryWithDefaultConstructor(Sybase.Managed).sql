BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_person') IS NOT NULL)
	DROP TABLE [i1084_person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_person') IS NULL)
	EXECUTE('
		CREATE TABLE [i1084_person]
		(
			[Id]            Int NOT NULL,
			[Number]        Int NOT NULL,
			[StatusBitmask] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_student') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_student') IS NULL)
	EXECUTE('
		CREATE TABLE [i1084_student]
		(
			[Id]            Int           NOT NULL,
			[Number]        NVarChar(255)     NULL,
			[StatusBitmask] Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[k_1].[StatusBitmask] & 128,
	[g_1].[StatusBitmask] & 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON [k_1].[Id] = [g_1].[Id] AND CAST([k_1].[Number] AS NVarChar(11)) = [g_1].[Number] AND [g_1].[Number] IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_student') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_person') IS NOT NULL)
	DROP TABLE [i1084_person]

