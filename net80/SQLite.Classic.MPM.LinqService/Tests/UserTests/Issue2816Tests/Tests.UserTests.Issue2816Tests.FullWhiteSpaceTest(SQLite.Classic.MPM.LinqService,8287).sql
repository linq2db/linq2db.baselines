BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2816Table]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2816Table]
(
	[Id]   INTEGER       NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2816Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(1) -- String
SET     @Text = ' '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Text NVarChar(3) -- String
SET     @Text = '   '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Text NVarChar(4) -- String
SET     @Text = '  x '

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR LTRIM([p].[Text], '	
                 　') = '')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2816Table]

