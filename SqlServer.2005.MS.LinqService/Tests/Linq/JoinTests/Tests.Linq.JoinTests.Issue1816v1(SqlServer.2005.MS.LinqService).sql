BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[stVersions]', N'U') IS NOT NULL)
	DROP TABLE [stVersions]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[stVersions]', N'U') IS NULL)
	CREATE TABLE [stVersions]
	(
		[inId]     Int NOT NULL,
		[inIdMain] Int NOT NULL,

		CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[rlStatesTypesAndUserGroups]', N'U') IS NOT NULL)
	DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[rlStatesTypesAndUserGroups]', N'U') IS NULL)
	CREATE TABLE [rlStatesTypesAndUserGroups]
	(
		[inIdState] Int NOT NULL,
		[inIdType]  Int NOT NULL,

		CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[stMain]', N'U') IS NOT NULL)
	DROP TABLE [stMain]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[stMain]', N'U') IS NULL)
	CREATE TABLE [stMain]
	(
		[inId]     Int NOT NULL,
		[inIdType] Int NOT NULL,

		CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[v].[inId],
	[t].[inIdState]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[stMain]', N'U') IS NOT NULL)
	DROP TABLE [stMain]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[rlStatesTypesAndUserGroups]', N'U') IS NOT NULL)
	DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[stVersions]', N'U') IS NOT NULL)
	DROP TABLE [stVersions]

