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

IF (OBJECT_ID(N'i1084_student') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'i1084_person') IS NOT NULL)
	DROP TABLE [i1084_person]

