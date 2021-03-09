﻿BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

CREATE TABLE [stVersions]
(
	[inId]     Int  NOT NULL IDENTITY,
	[inIdMain] Int  NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- SqlServer.2008
DECLARE @parentId Int -- Int32
SET     @parentId = 111
DECLARE @parentId_1 Int -- Int32
SET     @parentId_1 = 111

SELECT
	[version_1].[inIdMain]
FROM
	(
		SELECT
			[link_1].[inIdChild] as [Link_1],
			[link_1].[inId] as [Link_2],
			[link_1].[inIdParent] as [Link_3],
			[link_1].[inIdChild] as [Link_4],
			[link_1].[inIdTypeRel] as [Link_5],
			[link_1].[inMaxQuantity] as [Link_6],
			[link_1].[inMinQuantity] as [Link_7],
			[link_1].[inIdMeasure] as [Link_8],
			[link_1].[inIdUnit] as [Link_9],
			[link_1].[State] as [Link_10],
			[link_1].[dtModified] as [Link_11],
			[link_1].[inIdOrgOwner] as [Link_12],
			[link_1].[dtSynchDate] as [Link_13],
			[link_1].[stGUID] as [Link_14]
		FROM
			[stLinks] [link_1]
		WHERE
			[link_1].[inIdParent] = @parentId
		UNION ALL
		SELECT
			[link_2].[inIdParent] as [Link_1],
			[link_2].[inId] as [Link_2],
			[link_2].[inIdParent] as [Link_3],
			[link_2].[inIdChild] as [Link_4],
			[link_2].[inIdTypeRel] as [Link_5],
			[link_2].[inMaxQuantity] as [Link_6],
			[link_2].[inMinQuantity] as [Link_7],
			[link_2].[inIdMeasure] as [Link_8],
			[link_2].[inIdUnit] as [Link_9],
			[link_2].[State] as [Link_10],
			[link_2].[dtModified] as [Link_11],
			[link_2].[inIdOrgOwner] as [Link_12],
			[link_2].[dtSynchDate] as [Link_13],
			[link_2].[stGUID] as [Link_14]
		FROM
			[stLinks] [link_2]
		WHERE
			[link_2].[inIdChild] = @parentId_1
	) [u]
		INNER JOIN [stVersions] [version_1] ON [u].[Link_1] = [version_1].[inId]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[stVersions]', N'U') IS NOT NULL)
	DROP TABLE [stVersions]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[stLinks]', N'U') IS NOT NULL)
	DROP TABLE [stLinks]

