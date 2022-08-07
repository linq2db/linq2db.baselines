BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [stLinks]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [stLinks]
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [stVersions]
(
	[inId]     INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
	[inIdMain] INTEGER  NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @parentId  -- Int32
SET     @parentId = 111

SELECT
	[version_1].[inIdMain]
FROM
	(
		SELECT
			[link_1].[inIdChild] as [InIdChild],
			[link_1].[inId] as [InId],
			[link_1].[inIdParent] as [InIdParent],
			[link_1].[inIdChild] as [InIdChild_1],
			[link_1].[inIdTypeRel] as [InIdTypeRel],
			[link_1].[inMaxQuantity] as [InMaxQuantity],
			[link_1].[inMinQuantity] as [InMinQuantity],
			[link_1].[inIdMeasure] as [InIdMeasure],
			[link_1].[inIdUnit] as [InIdUnit],
			[link_1].[State] as [State_1],
			[link_1].[dtModified] as [DtModified],
			[link_1].[inIdOrgOwner] as [InIdOrgOwner],
			[link_1].[dtSynchDate] as [DtSynchDate],
			[link_1].[stGUID] as [StGUID]
		FROM
			[stLinks] [link_1]
		WHERE
			[link_1].[inIdParent] = @parentId
		UNION ALL
		SELECT
			[link_2].[inIdParent] as [InIdChild],
			[link_2].[inId] as [InId],
			[link_2].[inIdParent] as [InIdParent],
			[link_2].[inIdChild] as [InIdChild_1],
			[link_2].[inIdTypeRel] as [InIdTypeRel],
			[link_2].[inMaxQuantity] as [InMaxQuantity],
			[link_2].[inMinQuantity] as [InMinQuantity],
			[link_2].[inIdMeasure] as [InIdMeasure],
			[link_2].[inIdUnit] as [InIdUnit],
			[link_2].[State] as [State_1],
			[link_2].[dtModified] as [DtModified],
			[link_2].[inIdOrgOwner] as [InIdOrgOwner],
			[link_2].[dtSynchDate] as [DtSynchDate],
			[link_2].[stGUID] as [StGUID]
		FROM
			[stLinks] [link_2]
		WHERE
			[link_2].[inIdChild] = @parentId
	) [u]
		INNER JOIN [stVersions] [version_1] ON [u].[InIdChild] = [version_1].[inId]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [stLinks]

