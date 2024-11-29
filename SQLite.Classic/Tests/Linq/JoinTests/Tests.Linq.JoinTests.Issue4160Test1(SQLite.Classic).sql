BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT DISTINCT
	(
		SELECT
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
		LIMIT 1
	)
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160Person]

