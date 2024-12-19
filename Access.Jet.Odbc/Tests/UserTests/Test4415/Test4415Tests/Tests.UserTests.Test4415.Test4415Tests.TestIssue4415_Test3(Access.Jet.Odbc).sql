BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Common_Language]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Common_Language]
(
	[LanguageID] NVarChar(255)     NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @LanguageID NVarChar(2) -- String
SET     @LanguageID = 'de'
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'deutsch'

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @LanguageID NVarChar -- String
SET     @LanguageID = NULL
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'english'

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[LanguageID],
	[x].[Name]
FROM
	[Common_Language] [x]
WHERE
	[x].[LanguageID] IN (
		SELECT
			MAX([x_1].[LanguageID])
		FROM
			[Common_Language] [x_1]
		GROUP BY
			[x_1].[Name]
	)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Common_Language]

