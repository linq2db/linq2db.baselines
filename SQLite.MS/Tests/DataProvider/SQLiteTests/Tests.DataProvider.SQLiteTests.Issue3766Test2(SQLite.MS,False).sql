﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3766Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3766Table]
(
	[Id]    DateTimeOffset NOT NULL,
	[Value] INTEGER        NOT NULL,

	CONSTRAINT [PK_Issue3766Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29T17:09:55.1231234+00:00'
DECLARE @Value  -- Int32
SET     @Value = 0

INSERT INTO [Issue3766Table]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value  -- Int32
SET     @Value = 0
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29T17:09:55.1231234+00:00'

UPDATE
	[Issue3766Table]
SET
	[Value] = @Value
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [Issue3766Table].[Id]) = strftime('%Y-%m-%d %H:%M:%f', @Id)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3766Table]

