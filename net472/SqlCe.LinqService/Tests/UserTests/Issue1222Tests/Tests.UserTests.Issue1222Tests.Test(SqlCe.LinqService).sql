BeforeExecute
-- SqlCe

CREATE TABLE [stLinks]
(
	[inId]          Int            NOT NULL IDENTITY,
	[inIdParent]    Int            NOT NULL,
	[inIdChild]     Int            NOT NULL,
	[inIdTypeRel]   Int            NOT NULL,
	[inMaxQuantity] Float              NULL,
	[inMinQuantity] Float              NULL,
	[inIdMeasure]   Int                NULL,
	[inIdUnit]      Int                NULL,
	[State]         Int                NULL,
	[dtModified]    DateTime       NOT NULL,
	[inIdOrgOwner]  Int                NULL,
	[dtSynchDate]   DateTime           NULL,
	[stGUID]        NVarChar(255)  NOT NULL,

	CONSTRAINT [PK_stLinks] PRIMARY KEY ([inId])
)

BeforeExecute
-- SqlCe

CREATE TABLE [stVersions]
(
	[inId]     Int  NOT NULL IDENTITY,
	[inIdMain] Int  NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY ([inId])
)

BeforeExecute
-- SqlCe

DROP TABLE [stVersions]

BeforeExecute
-- SqlCe

DROP TABLE [stLinks]

