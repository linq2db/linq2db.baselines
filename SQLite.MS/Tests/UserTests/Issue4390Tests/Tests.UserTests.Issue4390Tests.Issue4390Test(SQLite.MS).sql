﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdviceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InfeedAdviceDTO]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InventoryResourceDTO]
(
	[InfeedAdviceID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InfeedAdviceID  -- Int32
SET     @InfeedAdviceID = 1

INSERT INTO [InventoryResourceDTO]
(
	[InfeedAdviceID]
)
VALUES
(
	@InfeedAdviceID
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [InfeedAdviceDTO]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[InfeedAdviceDTO] [infeed]
		INNER JOIN [InventoryResourceDTO] [inventory] ON [infeed].[Id] = [inventory].[InfeedAdviceID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdviceDTO]

