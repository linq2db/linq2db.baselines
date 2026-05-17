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

-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[Id] = 1
LIMIT 2

