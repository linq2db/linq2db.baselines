BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [stLinks]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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

	CONSTRAINT [PK_stLinks] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [stVersions]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [stVersions]
(
	[inId]     Int  NOT NULL IDENTITY,
	[inIdMain] Int  NOT NULL,

	CONSTRAINT [PK_stVersions] PRIMARY KEY CLUSTERED ([inId])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @parentId Integer -- Int32
SET     @parentId = 111
DECLARE @parentId_1 Integer -- Int32
SET     @parentId_1 = 111

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
			[link_1].[inIdChild] = @parentId_1
	) [u_1]
		INNER JOIN [stVersions] [version_1] ON ([u_1].[VersionId] = [version_1].[inId])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [stVersions]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [stLinks]

