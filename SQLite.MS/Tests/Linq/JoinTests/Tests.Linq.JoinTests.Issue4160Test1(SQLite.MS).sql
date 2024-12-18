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
	(
		SELECT
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			[cc].[Code] = [pe].[Code] AND [cc].[Code] IS NOT NULL AND [pe].[Code] IS NOT NULL OR
			[cc].[Code] IS NULL AND [pe].[Code] IS NULL
		LIMIT 1
	)
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4160Person]

