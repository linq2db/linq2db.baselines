BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WhereWithBool]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WhereWithBool]
(
	[Id]        INTEGER NOT NULL,
	[BoolValue] Bit     NOT NULL,

	CONSTRAINT [PK_WhereWithBool] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = 1

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] = 1 AND [x].[Id] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WhereWithBool]

