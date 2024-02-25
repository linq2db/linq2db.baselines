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
			Max([t1].[LanguageID])
		FROM
			[Common_Language] [t1]
		GROUP BY
			[t1].[Name]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Language]

