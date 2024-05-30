BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stVersions') IS NOT NULL)
	DROP TABLE [stVersions]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stVersions') IS NULL)
	EXECUTE('
		CREATE TABLE [stVersions]
		(
			[inId]     Int NOT NULL,
			[inIdMain] Int NOT NULL,

			CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'rlStatesTypesAndUserGroups') IS NOT NULL)
	DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'rlStatesTypesAndUserGroups') IS NULL)
	EXECUTE('
		CREATE TABLE [rlStatesTypesAndUserGroups]
		(
			[inIdState] Int NOT NULL,
			[inIdType]  Int NOT NULL,

			CONSTRAINT PK_rlStatesTypesAndUserGroups PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stMain') IS NOT NULL)
	DROP TABLE [stMain]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stMain') IS NULL)
	EXECUTE('
		CREATE TABLE [stMain]
		(
			[inId]     Int NOT NULL,
			[inIdType] Int NOT NULL,

			CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[v].[inId],
	[t].[inIdState]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stMain') IS NOT NULL)
	DROP TABLE [stMain]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'rlStatesTypesAndUserGroups') IS NOT NULL)
	DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stVersions') IS NOT NULL)
	DROP TABLE [stVersions]

