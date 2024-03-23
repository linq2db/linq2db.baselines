BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StLink]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [StLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(1,2,1),
(2,NULL,NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EdtLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(2,4,3)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[InId],
	[e].[InId],
	[t1].[InMinQuantity],
	[e].[InMinQuantity],
	[t1].[InMaxQuantity],
	[e].[InMaxQuantity]
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 1
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[InId],
	[e].[InId],
	[t1].[InMinQuantity],
	[e].[InMinQuantity],
	[t1].[InMaxQuantity],
	[e].[InMaxQuantity]
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 2
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [StLink]

