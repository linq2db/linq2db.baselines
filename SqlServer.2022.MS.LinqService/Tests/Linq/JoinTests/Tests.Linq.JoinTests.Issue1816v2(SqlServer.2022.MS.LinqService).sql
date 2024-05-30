BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[stVersions]', N'U') IS NULL)
	CREATE TABLE [stVersions]
	(
		[inId]     Int NOT NULL,
		[inIdMain] Int NOT NULL,

		CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[rlStatesTypesAndUserGroups]', N'U') IS NULL)
	CREATE TABLE [rlStatesTypesAndUserGroups]
	(
		[inIdState] Int NOT NULL,
		[inIdType]  Int NOT NULL,

		CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [stMain]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[stMain]', N'U') IS NULL)
	CREATE TABLE [stMain]
	(
		[inId]     Int NOT NULL,
		[inIdType] Int NOT NULL,

		CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[v].[inId],
	[t].[inIdState],
	[a_Main].[inIdType]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [stMain]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [stVersions]

