BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3766Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3766Table]
(
	[Id]    DateTimeOffset NOT NULL,
	[Value] INTEGER        NOT NULL,

	CONSTRAINT [PK_Issue3766Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29T17:09:55.1231234+00:00'

INSERT INTO [Issue3766Table] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	0
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2020-02-29T17:09:55.1231234+00:00'

INSERT INTO [Issue3766Table] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	0
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3766Table]

