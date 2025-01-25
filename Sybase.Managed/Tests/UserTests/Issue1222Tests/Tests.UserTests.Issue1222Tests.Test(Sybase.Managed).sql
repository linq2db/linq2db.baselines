BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stLinks') IS NOT NULL)
	DROP TABLE [stLinks]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stLinks') IS NULL)
	EXECUTE('
		CREATE TABLE [stLinks]
		(
			[inId]          Int           IDENTITY NOT NULL,
			[inIdParent]    Int                    NOT NULL,
			[inIdChild]     Int                    NOT NULL,
			[inIdTypeRel]   Int                    NOT NULL,
			[inMaxQuantity] Float                      NULL,
			[inMinQuantity] Float                      NULL,
			[inIdMeasure]   Int                        NULL,
			[inIdUnit]      Int                        NULL,
			[State]         Int                        NULL,
			[dtModified]    DateTime               NOT NULL,
			[inIdOrgOwner]  Int                        NULL,
			[dtSynchDate]   DateTime                   NULL,
			[stGUID]        NVarChar(255)          NOT NULL,

			CONSTRAINT [PK_stLinks] PRIMARY KEY CLUSTERED ([inId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stVersions') IS NOT NULL)
	DROP TABLE [stVersions]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stVersions') IS NULL)
	EXECUTE('
		CREATE TABLE [stVersions]
		(
			[inId]     Int IDENTITY NOT NULL,
			[inIdMain] Int          NOT NULL,

			CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @parentId Integer -- Int32
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stVersions') IS NOT NULL)
	DROP TABLE [stVersions]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'stLinks') IS NOT NULL)
	DROP TABLE [stLinks]

