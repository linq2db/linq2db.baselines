﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Stone]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Stone]', N'U') IS NULL)
	CREATE TABLE [Stone]
	(
		[Id]           Int             NOT NULL IDENTITY,
		[Name]         NVarChar(4000)  NOT NULL,
		[Enabled]      Bit                 NULL,
		[ImageFullUrl] NVarChar(4000)      NULL,

		CONSTRAINT [PK_Stone] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

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
			[sG].[Enabled] = 1 AND [sG].[Name] NOT LIKE N'level - %' ESCAPE N'~' AND
			Len([sG].[ImageFullUrl]) > 0
		GROUP BY
			[sG].[Name]
	) [sG_1]
		CROSS APPLY (
			SELECT TOP (1)
				[s].[Id],
				[s].[Name],
				[s].[Enabled],
				[s].[ImageFullUrl]
			FROM
				[Stone] [s]
			WHERE
				[s].[Enabled] = 1 AND
				[s].[Name] NOT LIKE N'level - %' ESCAPE N'~' AND
				Len([s].[ImageFullUrl]) > 0 AND
				[sG_1].[Name] = [s].[Name]
		) [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Stone]

