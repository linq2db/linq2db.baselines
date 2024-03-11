﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Language]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Common_Language]
(
	[LanguageID] NVarChar(255) NOT NULL,
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
('de','deutsch')

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Language]

