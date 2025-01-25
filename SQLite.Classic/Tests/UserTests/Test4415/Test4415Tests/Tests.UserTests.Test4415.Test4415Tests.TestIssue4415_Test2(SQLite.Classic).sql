BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Common_Language]
(
	[LanguageID] NVarChar(255) NOT NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
('de','deutsch')

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

