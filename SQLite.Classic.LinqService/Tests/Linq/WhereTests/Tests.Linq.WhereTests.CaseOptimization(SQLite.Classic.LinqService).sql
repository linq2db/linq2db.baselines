BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WhereWithString]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WhereWithString]
(
	[Id]          INTEGER       NOT NULL,
	[StringValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_WhereWithString] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringValue NVarChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE '%Str%' ESCAPE '~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WhereWithString]

