﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019
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
-- SqlServer.Contained SqlServer.2019

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
	[t1].[Id],
	[t1].[Nr]
FROM
	[InfeedAdvicePositionDTO] [infeed]
		OUTER APPLY (
			SELECT TOP (1)
				[ir].[Id],
				[ir].[Nr]
			FROM
				[MlogInfeedAddonsDTO] [ir]
			WHERE
				[ir].[Id] = [infeed].[Id]
		) [t1]

