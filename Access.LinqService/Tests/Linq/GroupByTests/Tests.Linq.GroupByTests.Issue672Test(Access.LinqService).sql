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
-- Access AccessOleDb

DROP TABLE [Stone]

