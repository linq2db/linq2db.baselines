BeforeExecute
-- Access AccessOleDb

DROP TABLE [Common_Language]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Common_Language]
(
	[LanguageID] NVarChar(255)     NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @LanguageID VarWChar(2) -- String
SET     @LanguageID = 'de'
DECLARE @Name VarWChar(7) -- String
SET     @Name = 'deutsch'

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
(
	@LanguageID,
	@Name
)

BeforeExecute
-- Access AccessOleDb
DECLARE @LanguageID VarWChar -- String
SET     @LanguageID = NULL
DECLARE @Name VarWChar(7) -- String
SET     @Name = 'english'

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
(
	@LanguageID,
	@Name
)

BeforeExecute
-- Access AccessOleDb

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
			Max([t1].[LanguageID]) IS NULL
	) OR [x].[LanguageID] IS NOT NULL AND [x].[LanguageID] IN (
		SELECT
			Max([t1].[LanguageID])
		FROM
			[Common_Language] [t1]
		GROUP BY
			[t1].[Name]
	))

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Common_Language]

