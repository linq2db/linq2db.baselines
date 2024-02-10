BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Common_Language]
(
	[LanguageID] NVarChar(255)     NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name]
)
VALUES
('de','deutsch'),
(NULL,'english')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

