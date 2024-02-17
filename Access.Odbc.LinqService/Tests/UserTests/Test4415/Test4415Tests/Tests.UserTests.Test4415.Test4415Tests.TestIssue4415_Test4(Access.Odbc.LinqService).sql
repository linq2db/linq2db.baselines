BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Common_Language]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Common_Language]
(
	[LanguageID] NVarChar(255)     NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC
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
-- Access.Odbc AccessODBC

SELECT
	[x].[LanguageID],
	[x].[Name]
FROM
	[Common_Language] [x]
WHERE
	([x].[LanguageID] IS NULL AND 1 IN (
		SELECT
			1
		FROM
			[Common_Language] [t1]
		GROUP BY
			[t1].[Name]
		HAVING
			Max([t1].[LanguageID]) + 'test' IS NULL
	) OR [x].[LanguageID] IS NOT NULL AND [x].[LanguageID] IN (
		SELECT
			Max([t1].[LanguageID]) + 'test'
		FROM
			[Common_Language] [t1]
		GROUP BY
			[t1].[Name]
	))

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Common_Language]

