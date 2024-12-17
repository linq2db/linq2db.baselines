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
	 EXISTS (
		SELECT
			*
		FROM
			(
				SELECT
					MAX([x_1].[LanguageID]) as [MAX_1]
				FROM
					[Common_Language] [x_1]
				GROUP BY
					[x_1].[Name]
			) [t1]
		WHERE
			[x].[LanguageID] = [t1].[MAX_1] OR [x].[LanguageID] IS NULL AND [t1].[MAX_1] IS NULL
	)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Common_Language]

