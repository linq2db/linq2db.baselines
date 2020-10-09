BeforeExecute
-- SqlCe

CREATE TABLE [stVersions]
(
	[inId]     Int NOT NULL,
	[inIdMain] Int NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY ([inId])
)

BeforeExecute
-- SqlCe

CREATE TABLE [rlStatesTypesAndUserGroups]
(
	[inIdState] Int NOT NULL,
	[inIdType]  Int NOT NULL,

	CONSTRAINT [PK_rlStatesTypesAndUserGroups] PRIMARY KEY ([inIdState], [inIdType])
)

BeforeExecute
-- SqlCe

CREATE TABLE [stMain]
(
	[inId]     Int NOT NULL,
	[inIdType] Int NOT NULL,

	CONSTRAINT [PK_stMain] PRIMARY KEY ([inId])
)

BeforeExecute
-- SqlCe

SELECT 
	[v].[inId], 
	[r].[inIdState]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [r] ON [r].[inIdType] = [a_Main].[inIdType]

BeforeExecute
-- SqlCe

DROP TABLE [stMain]

BeforeExecute
-- SqlCe

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlCe

DROP TABLE [stVersions]

