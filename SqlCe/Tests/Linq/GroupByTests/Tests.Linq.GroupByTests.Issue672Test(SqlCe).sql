BeforeExecute
-- SqlCe

DROP TABLE [Stone]

BeforeExecute
-- SqlCe

CREATE TABLE [Stone]
(
	[Id]           Int            NOT NULL IDENTITY,
	[Name]         NVarChar(255)  NOT NULL,
	[Enabled]      Bit                NULL,
	[ImageFullUrl] NVarChar(255)      NULL,

	CONSTRAINT [PK_Stone] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bit -- Boolean
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
-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bit -- Boolean
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
-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Bit -- Boolean
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
-- SqlCe

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
			Len([sG].[ImageFullUrl]) > 0 AND
			Len([sG].[ImageFullUrl]) IS NOT NULL
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
				[s].[Name] NOT LIKE 'level - %' ESCAPE '~' AND
				Len([s].[ImageFullUrl]) > 0 AND
				Len([s].[ImageFullUrl]) IS NOT NULL AND
				[sG_1].[Name] = [s].[Name]
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Stone]

