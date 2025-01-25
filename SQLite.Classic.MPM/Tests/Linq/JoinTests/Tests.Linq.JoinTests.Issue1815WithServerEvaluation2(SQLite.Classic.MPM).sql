BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [StLink]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [StLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EdtLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(2,4,3)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[InId],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMinQuantity]
		ELSE [e].[InMinQuantity]
	END,
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMaxQuantity]
		ELSE [e].[InMaxQuantity]
	END
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 1
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[InId],
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMinQuantity]
		ELSE [e].[InMinQuantity]
	END,
	CASE
		WHEN [e].[InId] IS NULL THEN [t1].[InMaxQuantity]
		ELSE [e].[InMaxQuantity]
	END
FROM
	[StLink] [t1]
		LEFT JOIN [EdtLink] [e] ON [t1].[InId] = [e].[InId]
WHERE
	[t1].[InId] = 2
LIMIT 2

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [StLink]

