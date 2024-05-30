BeforeExecute
-- Access AccessOleDb

DROP TABLE [Stone]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Stone]
(
	[Id]           Int            NOT NULL IDENTITY,
	[Name]         NVarChar(255)  NOT NULL,
	[Enabled]      Bit                NULL,
	[ImageFullUrl] NVarChar(255)      NULL,

	CONSTRAINT [PK_Stone] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Boolean
SET     @Enabled = True
DECLARE @ImageFullUrl VarWChar(3) -- String
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
-- Access AccessOleDb
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'group1'
DECLARE @Enabled Boolean
SET     @Enabled = True
DECLARE @ImageFullUrl VarWChar(3) -- String
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
-- Access AccessOleDb
DECLARE @Name VarWChar(6) -- String
SET     @Name = 'group2'
DECLARE @Enabled Boolean
SET     @Enabled = True
DECLARE @ImageFullUrl VarWChar(3) -- String
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
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[Name],
	[d].[Id],
	[d].[Name],
	[d].[Enabled],
	[d].[ImageFullUrl]
FROM
	(
		SELECT DISTINCT
			[s].[Name]
		FROM
			[Stone] [s]
		WHERE
			[s].[Enabled] = True AND [s].[Name] NOT LIKE 'level [-] %' AND
			Len([s].[ImageFullUrl]) > 0
	) [m_1]
		INNER JOIN [Stone] [d] ON ([m_1].[Name] = [d].[Name])
WHERE
	[d].[Enabled] = True AND [d].[Name] NOT LIKE 'level [-] %' AND
	Len([d].[ImageFullUrl]) > 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[sG].[Name]
FROM
	[Stone] [sG]
WHERE
	[sG].[Enabled] = True AND [sG].[Name] NOT LIKE 'level [-] %' AND
	Len([sG].[ImageFullUrl]) > 0
GROUP BY
	[sG].[Name]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Stone]

