﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT DISTINCT
	[cc_1].[Value_1]
FROM
	[Issue4160Person] [t1]
		LEFT JOIN (
			SELECT
				[cc].[Name] as [Value_1],
				ROW_NUMBER() OVER (PARTITION BY [cc].[Code] ORDER BY [cc].[Code]) as [rn],
				[cc].[Code]
			FROM
				[Issue4160City] [cc]
		) [cc_1] ON ([cc_1].[Code] = [t1].[Code] OR [cc_1].[Code] IS NULL AND [t1].[Code] IS NULL) AND [cc_1].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160Person]

