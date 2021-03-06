﻿BeforeExecute
-- SqlServer.2012

CREATE TABLE [Stone]
(
	[Id]           Int             NOT NULL IDENTITY,
	[Name]         NVarChar(4000)  NOT NULL,
	[Enabled]      Bit                 NULL,
	[ImageFullUrl] NVarChar(4000)      NULL,

	CONSTRAINT [PK_Stone] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2012
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'group1'
DECLARE @Enabled Bit -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl NVarChar(4000) -- String
SET     @ImageFullUrl = N'123'

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
-- SqlServer.2012
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'group1'
DECLARE @Enabled Bit -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl NVarChar(4000) -- String
SET     @ImageFullUrl = N'123'

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
-- SqlServer.2012
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'group2'
DECLARE @Enabled Bit -- Boolean
SET     @Enabled = 1
DECLARE @ImageFullUrl NVarChar(4000) -- String
SET     @ImageFullUrl = N'123'

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
-- SqlServer.2012

SELECT
	[s].[Name]
FROM
	[Stone] [s]
WHERE
	([s].[Enabled] = 1 AND [s].[Enabled] IS NOT NULL) AND
	[s].[Name] NOT LIKE N'level - %' AND Len([s].[ImageFullUrl]) > 0
GROUP BY
	[s].[Name]

BeforeExecute
-- SqlServer.2012
DECLARE @Name_1 NVarChar(4000) -- String
SET     @Name_1 = N'group1'

SELECT
	[s].[Id],
	[s].[Name],
	[s].[Enabled],
	[s].[ImageFullUrl]
FROM
	[Stone] [s]
WHERE
	([s].[Enabled] = 1 AND [s].[Enabled] IS NOT NULL) AND
	[s].[Name] NOT LIKE N'level - %' AND
	Len([s].[ImageFullUrl]) > 0 AND
	[s].[Name] = @Name_1

BeforeExecute
-- SqlServer.2012
DECLARE @Name_1 NVarChar(4000) -- String
SET     @Name_1 = N'group2'

SELECT
	[s].[Id],
	[s].[Name],
	[s].[Enabled],
	[s].[ImageFullUrl]
FROM
	[Stone] [s]
WHERE
	([s].[Enabled] = 1 AND [s].[Enabled] IS NOT NULL) AND
	[s].[Name] NOT LIKE N'level - %' AND
	Len([s].[ImageFullUrl]) > 0 AND
	[s].[Name] = @Name_1

BeforeExecute
-- SqlServer.2012

DROP TABLE [Stone]

