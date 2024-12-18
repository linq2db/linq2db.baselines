BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Stone]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Stone]
(
	[Id]           INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]         NVarChar(255)  NOT NULL,
	[Enabled]      Bit                NULL,
	[ImageFullUrl] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled  -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl NVarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO [Stone]
(
	[Name],
	[Enabled],
	[ImageFullUrl]
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled  -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl NVarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO [Stone]
(
	[Name],
	[Enabled],
	[ImageFullUrl]
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled  -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl NVarChar(3) -- String
SET     @ImageFullUrl = '123'

INSERT INTO [Stone]
(
	[Name],
	[Enabled],
	[ImageFullUrl]
)
VALUES
(
	@Name,
	@Enabled,
	@ImageFullUrl
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Enabled],
	[t1].[ImageFullUrl]
FROM
	(
		SELECT
			[sG].[Name]
		FROM
			[Stone] [sG]
		WHERE
			[sG].[Enabled] = 1 AND
			[sG].[Name] NOT LIKE 'level - %' ESCAPE '~' AND
			Length([sG].[ImageFullUrl]) > 0 AND
			Length([sG].[ImageFullUrl]) IS NOT NULL
		GROUP BY
			[sG].[Name]
	) [sG_1]
		INNER JOIN (
			SELECT
				[s].[Id],
				[s].[Name],
				[s].[Enabled],
				[s].[ImageFullUrl],
				ROW_NUMBER() OVER (PARTITION BY [s].[Name] ORDER BY [s].[Name]) as [rn]
			FROM
				[Stone] [s]
			WHERE
				[s].[Enabled] = 1 AND
				[s].[Name] NOT LIKE 'level - %' ESCAPE '~' AND
				Length([s].[ImageFullUrl]) > 0 AND
				Length([s].[ImageFullUrl]) IS NOT NULL
		) [t1] ON [sG_1].[Name] = [t1].[Name] AND [t1].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Stone]

