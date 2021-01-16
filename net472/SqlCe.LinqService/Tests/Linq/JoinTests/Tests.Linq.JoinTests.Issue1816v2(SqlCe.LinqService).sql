BeforeExecute
-- SqlCe

DROP TABLE [stVersions]

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

DROP TABLE [rlStatesTypesAndUserGroups]

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

DROP TABLE [stMain]

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

DROP TABLE [stMain]

BeforeExecute
-- SqlCe

DROP TABLE [rlStatesTypesAndUserGroups]

BeforeExecute
-- SqlCe

DROP TABLE [stVersions]

