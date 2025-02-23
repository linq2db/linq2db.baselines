BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp]
(
	[ID]   INTEGER      NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [FluentTemp] AS [t1]
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

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [FluentTemp]

