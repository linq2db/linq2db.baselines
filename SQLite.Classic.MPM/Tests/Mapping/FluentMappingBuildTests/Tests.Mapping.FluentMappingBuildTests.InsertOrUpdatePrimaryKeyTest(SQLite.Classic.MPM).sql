﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [FluentTemp]
(
	[ID]   INTEGER      NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [FluentTemp]

