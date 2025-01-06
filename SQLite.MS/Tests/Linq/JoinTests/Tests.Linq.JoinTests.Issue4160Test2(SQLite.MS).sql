BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
('SD','SYDNEY'),
('SD','SUNDAY'),
('SH','SYDHIP')

BeforeExecute
-- SQLite.MS SQLite

SELECT DISTINCT
	[cc_1].[Name]
FROM
	[Issue4160Person] [t1]
		LEFT JOIN (
			SELECT
				[cc].[Name],
				ROW_NUMBER() OVER (PARTITION BY [cc].[Code] ORDER BY [cc].[Code]) as [rn],
				[cc].[Code]
			FROM
				[Issue4160City] [cc]
		) [cc_1] ON ([cc_1].[Code] = [t1].[Code] OR [cc_1].[Code] IS NULL AND [t1].[Code] IS NULL) AND [cc_1].[rn] <= 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4160Person]

