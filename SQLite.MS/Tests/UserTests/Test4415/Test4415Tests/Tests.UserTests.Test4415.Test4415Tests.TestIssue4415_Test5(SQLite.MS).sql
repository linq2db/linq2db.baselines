BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Language]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Common_Language]
(
	[LanguageID] NVarChar(255)     NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
('de','deutsch'),
(NULL,'english')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[LanguageID],
	[t1].[Name]
FROM
	[Common_Language] [t1]

BeforeExecute
-- SQLite.MS SQLite

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
					Coalesce(MAX([x_1].[LanguageID]), '') || 'test' as [c1]
				FROM
					[Common_Language] [x_1]
				GROUP BY
					[x_1].[Name]
			) [t1]
		WHERE
			[x].[LanguageID] = [t1].[c1] OR [x].[LanguageID] IS NULL AND [t1].[c1] IS NULL
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Language]

