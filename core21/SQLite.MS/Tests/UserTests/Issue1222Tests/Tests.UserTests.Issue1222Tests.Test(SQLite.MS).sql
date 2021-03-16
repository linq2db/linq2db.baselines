BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [stLinks]
(
	[inId]          INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[inIdParent]    INTEGER        NOT NULL,
	[inIdChild]     INTEGER        NOT NULL,
	[inIdTypeRel]   INTEGER        NOT NULL,
	[inMaxQuantity] Float              NULL,
	[inMinQuantity] Float              NULL,
	[inIdMeasure]   INTEGER            NULL,
	[inIdUnit]      INTEGER            NULL,
	[State]         INTEGER            NULL,
	[dtModified]    DateTime2      NOT NULL,
	[inIdOrgOwner]  INTEGER            NULL,
	[dtSynchDate]   DateTime2          NULL,
	[stGUID]        NVarChar(255)  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [stVersions]
(
	[inId]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[inIdMain] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @parentId  -- Int32
SET     @parentId = 111
DECLARE @parentId_1  -- Int32
SET     @parentId_1 = 111

SELECT
	[version_1].[inIdMain]
FROM
	(
		SELECT
			[link_1].[inIdChild],
			[link_1].[inId],
			[link_1].[inIdParent],
			[link_1].[inIdChild] as [inIdChild_1],
			[link_1].[inIdTypeRel],
			[link_1].[inMaxQuantity],
			[link_1].[inMinQuantity],
			[link_1].[inIdMeasure],
			[link_1].[inIdUnit],
			[link_1].[State] as [State_1],
			[link_1].[dtModified],
			[link_1].[inIdOrgOwner],
			[link_1].[dtSynchDate],
			[link_1].[stGUID]
		FROM
			[stLinks] [link_1]
		WHERE
			[link_1].[inIdParent] = @parentId
		UNION ALL
		SELECT
			[link_2].[inIdParent] as [inIdChild],
			[link_2].[inId],
			[link_2].[inIdParent],
			[link_2].[inIdChild] as [inIdChild_1],
			[link_2].[inIdTypeRel],
			[link_2].[inMaxQuantity],
			[link_2].[inMinQuantity],
			[link_2].[inIdMeasure],
			[link_2].[inIdUnit],
			[link_2].[State] as [State_1],
			[link_2].[dtModified],
			[link_2].[inIdOrgOwner],
			[link_2].[dtSynchDate],
			[link_2].[stGUID]
		FROM
			[stLinks] [link_2]
		WHERE
			[link_2].[inIdChild] = @parentId_1
	) [u]
		INNER JOIN [stVersions] [version_1] ON [u].[inIdChild] = [version_1].[inId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [stVersions]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [stLinks]

