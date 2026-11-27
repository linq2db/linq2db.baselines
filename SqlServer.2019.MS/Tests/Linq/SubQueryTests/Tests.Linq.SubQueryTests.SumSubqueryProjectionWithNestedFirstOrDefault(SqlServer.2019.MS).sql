-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [SumSubqueryPosition]
(
	[Id]
)
VALUES
(
	@Id
)

-- SqlServer.2019.MS SqlServer.2019
DECLARE @InfeedAdviceID Int -- Int32
SET     @InfeedAdviceID = 1
DECLARE @Quantity Int -- Int32
SET     @Quantity = 9

INSERT INTO [SumSubqueryInventory]
(
	[InfeedAdviceID],
	[Quantity]
)
VALUES
(
	@InfeedAdviceID,
	@Quantity
)

-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Nr Int -- Int32
SET     @Nr = 77

INSERT INTO [SumSubqueryAddon]
(
	[Id],
	[Nr]
)
VALUES
(
	@Id,
	@Nr
)

-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (1)
	[infeed].[Id],
	Coalesce((
		SELECT
			SUM([x].[Quantity])
		FROM
			[SumSubqueryInventory] [x]
		WHERE
			[x].[InfeedAdviceID] = [infeed].[Id]
	), 0),
	[t1].[Id],
	[t1].[Nr]
FROM
	[SumSubqueryPosition] [infeed]
		OUTER APPLY (
			SELECT TOP (1)
				[ir].[Id],
				[ir].[Nr]
			FROM
				[SumSubqueryAddon] [ir]
			WHERE
				[ir].[Id] = [infeed].[Id]
		) [t1]

