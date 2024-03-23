BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Common_Language]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Common_Language]
(
	[LanguageID] NVarChar(255) NOT NULL,
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

SELECT
	[x].[LanguageID],
	[x].[Name]
FROM
	[Common_Language] [x]
WHERE
	[x].[LanguageID] IN (
		SELECT
			[t1].[MAX_1]
		FROM
			(
				SELECT
					MAX([x_1].[LanguageID]) as [MAX_1]
				FROM
					[Common_Language] [x_1]
				GROUP BY
					[x_1].[Name]
			) [t1]
	)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Common_Language]

