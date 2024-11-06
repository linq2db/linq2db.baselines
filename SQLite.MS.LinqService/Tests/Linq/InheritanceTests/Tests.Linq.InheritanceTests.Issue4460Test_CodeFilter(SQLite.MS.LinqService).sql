BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Base]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Base]
(
	[Code] NVarChar(255)     NULL,
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER           NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name]
)
VALUES
(
	@Code,
	@Id,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 10

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Age]
)
VALUES
(
	@Code,
	@Id,
	@Age
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN [e].[Code] = 'Child2' THEN 1
		ELSE 0
	END,
	[e].[Code],
	[e].[Id],
	[e].[Age],
	CASE
		WHEN [e].[Code] = 'Child' THEN 1
		ELSE 0
	END,
	[e].[Name]
FROM
	[Base] [e]
WHERE
	[e].[Code] <> 'Child' OR [e].[Code] IS NULL

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Base]

