BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Stone]
(
	[Id]           INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]         NVarChar(255)  NOT NULL,
	[Enabled]      Bit                NULL,
	[ImageFullUrl] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[s].[Name]
FROM
	[Stone] [s]
WHERE
	([s].[Enabled] = 1 AND [s].[Enabled] IS NOT NULL) AND
	[s].[Name] NOT LIKE 'level - %' AND Length([s].[ImageFullUrl]) > 0
GROUP BY
	[s].[Name]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name_1 NVarChar(6) -- String
SET     @Name_1 = 'group1'

SELECT
	[s].[Id],
	[s].[Name],
	[s].[Enabled],
	[s].[ImageFullUrl]
FROM
	[Stone] [s]
WHERE
	([s].[Enabled] = 1 AND [s].[Enabled] IS NOT NULL) AND
	[s].[Name] NOT LIKE 'level - %' AND
	Length([s].[ImageFullUrl]) > 0 AND
	[s].[Name] = @Name_1

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name_1 NVarChar(6) -- String
SET     @Name_1 = 'group2'

SELECT
	[s].[Id],
	[s].[Name],
	[s].[Enabled],
	[s].[ImageFullUrl]
FROM
	[Stone] [s]
WHERE
	([s].[Enabled] = 1 AND [s].[Enabled] IS NOT NULL) AND
	[s].[Name] NOT LIKE 'level - %' AND
	Length([s].[ImageFullUrl]) > 0 AND
	[s].[Name] = @Name_1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Stone]

