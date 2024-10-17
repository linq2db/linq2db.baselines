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
	EXISTS(
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

