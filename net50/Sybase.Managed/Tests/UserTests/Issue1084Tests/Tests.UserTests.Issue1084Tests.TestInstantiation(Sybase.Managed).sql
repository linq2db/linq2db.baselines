﻿BeforeExecute
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

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
SELECT 1,1,0 UNION ALL
SELECT 2,2,0

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

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
SELECT 1,'1',0 UNION ALL
SELECT 2,'2',0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON [k_1].[Id] = [joinedTable].[Id] AND (Convert(NVarChar(11), [k_1].[Number]) = [joinedTable].[Number] OR Convert(NVarChar(11), [k_1].[Number]) IS NULL AND [joinedTable].[Number] IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_student') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_person') IS NOT NULL)
	DROP TABLE [i1084_person]

