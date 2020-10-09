BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [stVersions]
(
	[inId]     Int NOT NULL,
	[inIdMain] Int NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [rlStatesTypesAndUserGroups]
(
	[inIdState] Int NOT NULL,
	[inIdType]  Int NOT NULL,

	CONSTRAINT PK_rlStatesTypesAndUserGroups PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
)

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [stMain]
(
	[inId]     Int NOT NULL,
	[inIdType] Int NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[v].[inId], 
	[r].[inIdState], 
	[a_Main].[inIdType]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [r] ON [r].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [stMain]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [stVersions]

