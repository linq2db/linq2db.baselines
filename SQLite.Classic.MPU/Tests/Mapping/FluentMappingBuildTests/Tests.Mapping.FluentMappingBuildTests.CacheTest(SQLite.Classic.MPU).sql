-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_Cache]
(
	[ID]       INTEGER      NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp_Cache]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_Cache]
(
	[ID]       INTEGER      NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp_Cache]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_Cache]
(
	[ID]       INTEGER      NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp_Cache]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_Cache]
(
	[ID]       INTEGER      NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Cache] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Cache]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp_Cache] [t]
WHERE
	[t].[ID] = 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp_Cache]

