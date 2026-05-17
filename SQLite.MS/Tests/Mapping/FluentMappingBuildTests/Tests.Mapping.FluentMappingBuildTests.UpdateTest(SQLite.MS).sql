-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_Update]
(
	[ID]       INTEGER      NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_Update] PRIMARY KEY ([ID])
)

-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_Update]
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

-- SQLite.MS SQLite
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp_Update]
SET
	[Value] = @Name,
	[LastName] = @LastName
WHERE
	[FluentTemp_Update].[ID] = 1

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FluentTemp_Update]

