BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Common_Language]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Common_Language]
(
	[LanguageID]            NVarChar(255) NOT NULL,
	[Name]                  NVarChar(255)     NULL,
	[AlternativeLanguageID] NVarChar(255)     NULL,
	[Order]                 Int           NOT NULL,
	[IsoCode]               NVarChar(255)     NULL,

	CONSTRAINT [PK_Common_Language] PRIMARY KEY CLUSTERED ([LanguageID])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @LanguageID NVarChar(2) -- String
SET     @LanguageID = 'de'
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'deutsch'
DECLARE @AlternativeLanguageID NVarChar -- String
SET     @AlternativeLanguageID = NULL
DECLARE @Order Int -- Int32
SET     @Order = 0
DECLARE @IsoCode NVarChar -- String
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
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x].[LanguageID],
	[x].[Name],
	[x].[AlternativeLanguageID],
	[x].[Order],
	[x].[IsoCode]
FROM
	[Common_Language] [x]
WHERE
	[x].[LanguageID] IN (
		SELECT
			Max([t1].[LanguageID])
		FROM
			[Common_Language] [t1]
		GROUP BY
			[t1].[Name]
	)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Common_Language]

