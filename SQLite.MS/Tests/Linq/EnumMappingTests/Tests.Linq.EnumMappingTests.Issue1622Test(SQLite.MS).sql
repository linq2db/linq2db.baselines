﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1622Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue1622Table]
(
	[Id]       INTEGER       NOT NULL,
	[SomeText] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue1622Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @SomeText NVarChar(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO [Issue1622Table]
(
	[Id],
	[SomeText]
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[Id] = 1
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue1622Table]

