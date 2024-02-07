BeforeExecute
-- Access AccessOleDb

DROP TABLE [Common_Language]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Common_Language]
(
	[LanguageID]            NVarChar(255)     NULL,
	[Name]                  NVarChar(255)     NULL,
	[AlternativeLanguageID] NVarChar(255)     NULL,
	[Order]                 Int           NOT NULL,
	[IsoCode]               NVarChar(255)     NULL,

	CONSTRAINT [PK_Common_Language] PRIMARY KEY CLUSTERED ([LanguageID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @LanguageID VarWChar(2) -- String
SET     @LanguageID = 'de'
DECLARE @Name VarWChar(7) -- String
SET     @Name = 'deutsch'
DECLARE @AlternativeLanguageID VarWChar -- String
SET     @AlternativeLanguageID = NULL
DECLARE @Order Integer -- Int32
SET     @Order = 0
DECLARE @IsoCode VarWChar -- String
SET     @IsoCode = NULL

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name],
	[AlternativeLanguageID],
	[Order],
	[IsoCode]
)
VALUES
(
	@LanguageID,
	@Name,
	@AlternativeLanguageID,
	@Order,
	@IsoCode
)

BeforeExecute
-- Access AccessOleDb

SELECT
	Max([t1].[LanguageID])
FROM
	[Common_Language] [t1]
GROUP BY
	[t1].[Name]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Common_Language]

