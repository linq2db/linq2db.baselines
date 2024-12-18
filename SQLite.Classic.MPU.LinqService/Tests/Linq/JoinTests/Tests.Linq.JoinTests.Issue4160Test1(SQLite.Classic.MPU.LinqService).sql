BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4160Person]

