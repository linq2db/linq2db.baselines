BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Common_Language]
(
	[LanguageID]            NVarChar(255) NOT NULL,
	[Name]                  NVarChar(255)     NULL,
	[AlternativeLanguageID] NVarChar(255)     NULL,
	[Order]                 INTEGER       NOT NULL,
	[IsoCode]               NVarChar(255)     NULL,

	CONSTRAINT [PK_Common_Language] PRIMARY KEY ([LanguageID])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Common_Language]
(
	[LanguageID],
	[Name],
	[AlternativeLanguageID],
	[Order],
	[IsoCode]
)
VALUES
('de','deutsch',NULL,0,NULL)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[LanguageID],
	[x].[Name],
	[x].[AlternativeLanguageID],
	[x].[Order],
	[x].[IsoCode]
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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Common_Language]

