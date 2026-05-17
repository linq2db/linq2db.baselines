-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp_UpdateAsync]
(
	[ID]       INTEGER      NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp_UpdateAsync] PRIMARY KEY ([ID])
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

INSERT INTO [FluentTemp_UpdateAsync]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'John II'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Dory'

UPDATE
	[FluentTemp_UpdateAsync]
SET
	[Value] = @Name,
	[LastName] = @LastName
WHERE
	[FluentTemp_UpdateAsync].[ID] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp_UpdateAsync]

