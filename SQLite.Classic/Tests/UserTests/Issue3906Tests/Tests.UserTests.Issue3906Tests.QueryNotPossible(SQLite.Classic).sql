﻿BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[infeed].[Id],
	(
		SELECT
			SUM([x].[Quantity])
		FROM
			[InventoryResourceDTO] [x]
		WHERE
			[x].[InfeedAdviceID] = [infeed].[Id]
	),
	[t1].[Id],
	[t1].[Nr]
FROM
	[InfeedAdvicePositionDTO] [infeed]
		LEFT JOIN (
			SELECT
				[ir].[Id],
				[ir].[Nr],
				ROW_NUMBER() OVER (PARTITION BY [ir].[Id] ORDER BY [ir].[Id]) as [rn]
			FROM
				[MlogInfeedAddonsDTO] [ir]
		) [t1] ON [t1].[Id] = [infeed].[Id] AND [t1].[rn] <= 1
LIMIT 1

