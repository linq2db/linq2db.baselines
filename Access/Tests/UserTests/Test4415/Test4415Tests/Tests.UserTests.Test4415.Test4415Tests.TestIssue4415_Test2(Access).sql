BeforeExecute
-- Access AccessOleDb

DROP TABLE [Common_Language]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Common_Language]
(
	[LanguageID] NVarChar(255) NOT NULL,
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

SELECT
	[x].[LanguageID],
	[x].[Name]
FROM
	[Common_Language] [x]
WHERE
	[x].[LanguageID] IN (
		SELECT
			[t1].[Max_1]
		FROM
			(
				SELECT
					Max([x_1].[LanguageID]) as [Max_1]
				FROM
					[Common_Language] [x_1]
				GROUP BY
					[x_1].[Name]
			) [t1]
	)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Common_Language]

