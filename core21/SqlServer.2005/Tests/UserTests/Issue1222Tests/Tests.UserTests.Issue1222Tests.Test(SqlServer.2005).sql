BeforeExecute
-- SqlServer.2005

CREATE TABLE [stLinks]
(
	[inId]          Int             NOT NULL IDENTITY,
	[inIdParent]    Int             NOT NULL,
	[inIdChild]     Int             NOT NULL,
	[inIdTypeRel]   Int             NOT NULL,
	[inMaxQuantity] Float               NULL,
	[inMinQuantity] Float               NULL,
	[inIdMeasure]   Int                 NULL,
	[inIdUnit]      Int                 NULL,
	[State]         Int                 NULL,
	[dtModified]    DateTime        NOT NULL,
	[inIdOrgOwner]  Int                 NULL,
	[dtSynchDate]   DateTime            NULL,
	[stGUID]        NVarChar(4000)  NOT NULL,

	CONSTRAINT [PK_stLinks] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [stVersions]
(
	[inId]     Int  NOT NULL IDENTITY,
	[inIdMain] Int  NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [stVersions]

BeforeExecute
-- SqlServer.2005

DROP TABLE [stLinks]

