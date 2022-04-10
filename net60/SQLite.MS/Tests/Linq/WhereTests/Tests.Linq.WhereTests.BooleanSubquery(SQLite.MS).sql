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

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(1,1)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t]
WHERE
	(
		SELECT
			[x].[BoolValue]
		FROM
			[WhereWithBool] [x]
		WHERE
			[x].[Id] = 1
	) = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WhereWithBool]

