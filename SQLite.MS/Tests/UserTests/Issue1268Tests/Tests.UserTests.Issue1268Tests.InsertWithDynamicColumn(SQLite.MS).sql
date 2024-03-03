﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicColumnTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DynamicColumnTable]
(
	[Id]        INTEGER       NOT NULL,
	[Name]      NVarChar(255)     NULL,
	[IsDeleted] Bit           NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Some1'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = 1

INSERT INTO [DynamicColumnTable]
(
	[Id],
	[Name],
	[IsDeleted]
)
VALUES
(
	@Id,
	@Name,
	@IsDeleted
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Some2'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = 0

INSERT INTO [DynamicColumnTable]
(
	[Id],
	[Name],
	[IsDeleted]
)
VALUES
(
	@Id,
	@Name,
	@IsDeleted
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[DynamicColumnTable] [e]
WHERE
	([e].[Name] = 'Some1')
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[DynamicColumnTable] [e]
WHERE
	([e].[Name] = 'Some2')
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DynamicColumnTable]

