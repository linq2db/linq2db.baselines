﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicColumnTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DynamicColumnTable]
(
	[Id]        INTEGER       NOT NULL,
	[Name]      NVarChar(255)     NULL,
	[IsDeleted] Bit           NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[DynamicColumnTable] [e]
WHERE
	[e].[Name] = 'Some1'
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[DynamicColumnTable] [e]
WHERE
	[e].[Name] = 'Some2'
LIMIT @take

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicColumnTable]

