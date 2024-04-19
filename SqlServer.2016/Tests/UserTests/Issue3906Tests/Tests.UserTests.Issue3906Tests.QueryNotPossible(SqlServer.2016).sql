﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[InfeedAdvicePositionDTO]', N'U') IS NULL)
	CREATE TABLE [InfeedAdvicePositionDTO]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[InventoryResourceDTO]', N'U') IS NULL)
	CREATE TABLE [InventoryResourceDTO]
	(
		[InfeedAdviceID] Int NOT NULL,
		[Quantity]       Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [MlogInfeedAddonsDTO]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[MlogInfeedAddonsDTO]', N'U') IS NULL)
	CREATE TABLE [MlogInfeedAddonsDTO]
	(
		[Id] Int NOT NULL,
		[Nr] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
DECLARE @Id Int -- Int32
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
-- SqlServer.2016
DECLARE @InfeedAdviceID Int -- Int32
SET     @InfeedAdviceID = 1
DECLARE @Quantity Int -- Int32
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
-- SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Nr Int -- Int32
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
-- SqlServer.2016

SELECT TOP (1)
	[infeed].[Id],
	(
		SELECT
			SUM([x].[Quantity])
		FROM
			[InventoryResourceDTO] [x]
		WHERE
			[x].[InfeedAdviceID] = [infeed].[Id]
	),
	[t2].[not_null],
	[t2].[Id],
	[t2].[Nr]
FROM
	[InfeedAdvicePositionDTO] [infeed]
		OUTER APPLY (
			SELECT TOP (1)
				[d].[Id],
				[d].[Nr],
				1 as [not_null]
			FROM
				(
					SELECT
						1 as [c1]
				) [t1]
					LEFT JOIN [MlogInfeedAddonsDTO] [d] ON [d].[Id] = [infeed].[Id]
		) [t2]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [MlogInfeedAddonsDTO]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [InventoryResourceDTO]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [InfeedAdvicePositionDTO]

