BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [InfeedAdvicePositionDTO]
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
	[InfeedAdviceID] INTEGER NOT NULL,
	[Quantity]       INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MlogInfeedAddonsDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MlogInfeedAddonsDTO]
(
	[Id] INTEGER NOT NULL,
	[Nr] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [InfeedAdvicePositionDTO]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @InfeedAdviceID  -- Int32
SET     @InfeedAdviceID = 1
DECLARE @Quantity  -- Int32
SET     @Quantity = 9

INSERT INTO [InventoryResourceDTO]
(
	[InfeedAdviceID],
	[Quantity]
)
VALUES
(
	@InfeedAdviceID,
	@Quantity
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Nr  -- Int32
SET     @Nr = 77

INSERT INTO [MlogInfeedAddonsDTO]
(
	[Id],
	[Nr]
)
VALUES
(
	@Id,
	@Nr
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[_ir].[Id],
	[_ir].[Nr]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[oto].[Id]
				FROM
					[InfeedAdvicePositionDTO] [oto]
				LIMIT @take
			) [t1]
	) [key_data_result]
		LEFT JOIN [MlogInfeedAddonsDTO] [_ir] ON [_ir].[Id] = [key_data_result].[Id]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[oto].[Id],
	(
		SELECT
			Sum([x].[Quantity])
		FROM
			[InventoryResourceDTO] [x]
		WHERE
			[x].[InfeedAdviceID] = [oto].[Id]
	)
FROM
	[InfeedAdvicePositionDTO] [oto]
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MlogInfeedAddonsDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

