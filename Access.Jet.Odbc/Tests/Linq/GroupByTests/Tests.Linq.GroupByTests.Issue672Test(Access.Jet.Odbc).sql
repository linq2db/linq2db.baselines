-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bit -- Boolean
SET     @Enabled = True
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
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Bit -- Boolean
SET     @Enabled = True
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
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Bit -- Boolean
SET     @Enabled = True
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
	?,
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT
	(
		SELECT TOP 1
			[s].[Id]
		FROM
			[Stone] [s]
		WHERE
			[s].[Enabled] = True AND
			[s].[Name] NOT LIKE 'level [-] %' AND
			Len([s].[ImageFullUrl]) > 0 AND
			[sG_1].[Key_1] = [s].[Name]
	),
	(
		SELECT TOP 1
			[s_1].[Name]
		FROM
			[Stone] [s_1]
		WHERE
			[s_1].[Enabled] = True AND
			[s_1].[Name] NOT LIKE 'level [-] %' AND
			Len([s_1].[ImageFullUrl]) > 0 AND
			[sG_1].[Key_1] = [s_1].[Name]
	),
	(
		SELECT TOP 1
			[s_2].[Enabled]
		FROM
			[Stone] [s_2]
		WHERE
			[s_2].[Enabled] = True AND
			[s_2].[Name] NOT LIKE 'level [-] %' AND
			Len([s_2].[ImageFullUrl]) > 0 AND
			[sG_1].[Key_1] = [s_2].[Name]
	),
	(
		SELECT TOP 1
			[s_3].[ImageFullUrl]
		FROM
			[Stone] [s_3]
		WHERE
			[s_3].[Enabled] = True AND
			[s_3].[Name] NOT LIKE 'level [-] %' AND
			Len([s_3].[ImageFullUrl]) > 0 AND
			[sG_1].[Key_1] = [s_3].[Name]
	)
FROM
	(
		SELECT DISTINCT
			[sG].[Name] as [Key_1]
		FROM
			[Stone] [sG]
		WHERE
			[sG].[Enabled] = True AND [sG].[Name] NOT LIKE 'level [-] %' AND
			Len([sG].[ImageFullUrl]) > 0
	) [sG_1]

