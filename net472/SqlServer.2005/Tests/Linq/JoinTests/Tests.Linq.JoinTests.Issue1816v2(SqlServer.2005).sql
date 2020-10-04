BeforeExecute
-- SqlServer.2005

CREATE TABLE [stVersions]
(
	[inId]     Int NOT NULL,
	[inIdMain] Int NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [rlStatesTypesAndUserGroups]
(
	[inIdState] Int NOT NULL,
	[inIdType]  Int NOT NULL,

	CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY CLUSTERED ([inIdState], [inIdType])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [stMain]
(
	[inId]     Int NOT NULL,
	[inIdType] Int NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- SqlServer.2005

SELECT
	[v].[inId],
	[r].[inIdState],
	[a_Main].[inIdType]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [r] ON [r].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- SqlServer.2005

DROP TABLE [stMain]

BeforeExecute
-- SqlServer.2005

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlServer.2005

DROP TABLE [stVersions]

