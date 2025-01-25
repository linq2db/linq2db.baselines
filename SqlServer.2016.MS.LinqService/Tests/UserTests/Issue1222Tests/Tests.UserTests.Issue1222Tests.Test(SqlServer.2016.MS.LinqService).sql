BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [stLinks]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[stLinks]', N'U') IS NULL)
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
		[dtModified]    DateTime2       NOT NULL,
		[inIdOrgOwner]  Int                 NULL,
		[dtSynchDate]   DateTime2           NULL,
		[stGUID]        NVarChar(4000)  NOT NULL,

		CONSTRAINT [PK_stLinks] PRIMARY KEY CLUSTERED ([inId])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[stVersions]', N'U') IS NULL)
	CREATE TABLE [stVersions]
	(
		[inId]     Int  NOT NULL IDENTITY,
		[inIdMain] Int  NOT NULL,

		CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @parentId Int -- Int32
SET     @parentId = 111

SELECT
	[version_1].[inIdMain]
FROM
	(
		SELECT
			[u].[inIdChild] as [VersionId]
		FROM
			[stLinks] [u]
		WHERE
			[u].[inIdParent] = @parentId
		UNION ALL
		SELECT
			[link_1].[inIdParent] as [VersionId]
		FROM
			[stLinks] [link_1]
		WHERE
			[link_1].[inIdChild] = @parentId
	) [u_1]
		INNER JOIN [stVersions] [version_1] ON [u_1].[VersionId] = [version_1].[inId]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [stLinks]

