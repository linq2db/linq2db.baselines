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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [stVersions]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [stLinks]

