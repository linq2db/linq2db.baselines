BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [StLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_StLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InId  -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity  -- Double
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity  -- Double
SET     @InMinQuantity = 1

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InId  -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity  -- Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity  -- Double
SET     @InMinQuantity = NULL

INSERT INTO [StLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [EdtLink]
(
	[InId]          INTEGER NOT NULL,
	[InMaxQuantity] Float       NULL,
	[InMinQuantity] Float       NULL,

	CONSTRAINT [PK_EdtLink] PRIMARY KEY ([InId])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InId  -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity  -- Double
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity  -- Double
SET     @InMinQuantity = 3

INSERT INTO [EdtLink]
(
	[InId],
	[InMaxQuantity],
	[InMinQuantity]
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

DROP TABLE [EdtLink]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [StLink]

