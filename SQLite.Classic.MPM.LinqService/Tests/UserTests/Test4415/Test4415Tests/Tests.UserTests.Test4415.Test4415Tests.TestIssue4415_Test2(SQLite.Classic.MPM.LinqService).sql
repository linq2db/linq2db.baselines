﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Common_Language]
(
	[LanguageID] NVarChar(255) NOT NULL,
	[Name]       NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

