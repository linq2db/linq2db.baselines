﻿BeforeExecute
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
	@LanguageID,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite
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
	@LanguageID,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite

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
					Max([x_1].[LanguageID]) || 'test' as [c1]
				FROM
					[Common_Language] [x_1]
				GROUP BY
					[x_1].[Name]
			) [t1]
		WHERE
			([x].[LanguageID] = [t1].[c1] OR [x].[LanguageID] IS NULL AND [t1].[c1] IS NULL)
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Common_Language]

