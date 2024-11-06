﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Names]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Names]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Addresses]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Addresses]
(
	[Id]   INTEGER       NOT NULL,
	[Text] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO [Names]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(7) -- String
SET     @Text = 'address'

INSERT INTO [Addresses]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Text]
FROM
	(
		SELECT DISTINCT
			[Item1].[Id]
		FROM
			[Names] [Item1]
	) [m_1]
		INNER JOIN [Addresses] [d] ON [m_1].[Id] = [d].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[tupledArg].[Id],
	[tupledArg].[Name]
FROM
	[Names] [tupledArg]
ORDER BY
	[tupledArg].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Addresses]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Names]

