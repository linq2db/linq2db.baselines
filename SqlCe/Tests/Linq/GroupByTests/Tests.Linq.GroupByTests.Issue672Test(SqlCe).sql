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
			[sG].[Enabled] = 1 AND [sG].[Name] NOT LIKE 'level - %' ESCAPE '~' AND
			LEN([sG].[ImageFullUrl] + '.') - 1 > 0
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
				LEN([s].[ImageFullUrl] + '.') - 1 > 0 AND
				[sG_1].[Name] = [s].[Name]
		) [t1]

