BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [StLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EdtLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(2,4,3)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[InId],
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMinQuantity]
		ELSE [j].[InMinQuantity]
	END,
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMaxQuantity]
		ELSE [j].[InMaxQuantity]
	END
FROM
	[StLink] [x]
		LEFT JOIN [EdtLink] [j] ON [x].[InId] = [j].[InId]
WHERE
	[x].[InId] = 1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[x].[InId],
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMinQuantity]
		ELSE [j].[InMinQuantity]
	END,
	CASE
		WHEN [j].[InId] IS NULL THEN [x].[InMaxQuantity]
		ELSE [j].[InMaxQuantity]
	END
FROM
	[StLink] [x]
		LEFT JOIN [EdtLink] [j] ON [x].[InId] = [j].[InId]
WHERE
	[x].[InId] = 2
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [EdtLink]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [StLink]

