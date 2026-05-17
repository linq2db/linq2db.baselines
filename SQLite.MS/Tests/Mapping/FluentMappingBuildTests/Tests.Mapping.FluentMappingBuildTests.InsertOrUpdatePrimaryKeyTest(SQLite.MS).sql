-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FluentTemp_InsertOrUpdate]

-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_InsertOrUpdate]
(
	[ID]   INTEGER      NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY ([ID])
)

-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp_InsertOrUpdate]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

-- SQLite.MS SQLite

INSERT INTO [FluentTemp_InsertOrUpdate] AS [t1]
(
	[ID],
	[Name]
)
VALUES
(
	1,
	'John II'
)
ON CONFLICT ([ID]) DO UPDATE SET
	[ID] = [t1].[ID],
	[Name] = [t1].[Name]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FluentTemp_InsertOrUpdate]

