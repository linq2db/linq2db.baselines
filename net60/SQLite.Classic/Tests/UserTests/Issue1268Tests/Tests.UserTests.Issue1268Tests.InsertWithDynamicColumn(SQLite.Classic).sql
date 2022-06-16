BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [DynamicColumnTable]
(
	[Id]        INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name]      NVarChar(255)      NULL,
	[IsDeleted] Bit            NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Some1'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = 1

INSERT INTO [DynamicColumnTable]
(
	[Name],
	[IsDeleted]
)
VALUES
(
	@Name,
	@IsDeleted
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Some2'
DECLARE @IsDeleted  -- Boolean
SET     @IsDeleted = 0

INSERT INTO [DynamicColumnTable]
(
	[Name],
	[IsDeleted]
)
VALUES
(
	@Name,
	@IsDeleted
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[DynamicColumnTable] [e]
WHERE
	[e].[Name] = 'Some1'
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[DynamicColumnTable] [e]
WHERE
	[e].[Name] = 'Some2'
LIMIT 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DynamicColumnTable]

