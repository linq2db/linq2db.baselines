BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Base]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Base]
(
	[Code]   NVarChar(255)     NULL,
	[Id]     INTEGER       NOT NULL,
	[Name]   NVarChar(255)     NULL,
	[IsMale] Bit               NULL,
	[Age]    INTEGER           NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale  -- Boolean
SET     @IsMale = 0

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[IsMale]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@IsMale
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age  -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e].[Code],
	[e].[Id],
	[e].[Name],
	[e].[IsMale],
	[e].[Age]
FROM
	[Base] [e]
WHERE
	CASE
		WHEN [e].[Code] = 'Child2' AND [e].[Code] IS NOT NULL OR [e].[Code] = 'Child' AND [e].[Code] IS NOT NULL OR [e].[Code] = 'BaseChild' AND [e].[Code] IS NOT NULL
			THEN 1
		WHEN [e].[Id] <> 0 THEN 1
		ELSE 0
	END
ORDER BY
	[e].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Base]

